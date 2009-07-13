package CatalystX::RedirectAfterLogin;

use Moose::Role;
use MooseX::Types::Moose qw/Str/;
use namespace::autoclean;

our $VERSION = '0.001';


# ABSTRACT: redirect to the previous page after logging in
has url => (
    isa => Str,
    reader => 'url',
    is  => 'ro',
    required => 1,
    lazy => 1,
    default => sub {
        if ( $_[0] ) {
            $_[0];
        } else {
            _use_flash();
        }
    }
);

## pretty much just taken from my post here:
## http://dev.catalystframework.org/wiki/wikicookbook/nextpageredirect
sub next_page {
    my ($self, $c) = @_;

    my $redirect_url = $self->url;
    $c->res->redirect( $redirect_url );

}

## broken
sub _use_flash { 
    my ($self, $c) = @_;
    $c->flash->{next_page};
}

no Moose;



1;
