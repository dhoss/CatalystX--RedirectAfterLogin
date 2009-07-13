package CatalystX::RedirectAfterLogin;

use Moose::Role;
use MooseX::Types::Moose qw/Str/;
use namespace::autoclean;
our $VERSION = '0.001';

# ABSTRACT: redirect to the previous page after logging in


## pretty much just taken from my post here:
## http://dev.catalystframework.org/wiki/wikicookbook/nextpageredirect
sub next_page {
    my ($self, $c, $url) = @_;

    my $redirect_url = $url;
    $c->log->debug('Redirecting from next page');
    $c->res->redirect( $redirect_url );

}

## broken
sub _use_flash { 
    my ($self, $c) = @_;
    $c->flash->{next_page};
}

1;
