package CatalystX::RedirectAfterLogin;

use Moose::Role;
use namespace::autoclean;

## pretty much just taken from my post here:
## http://dev.catalystframework.org/wiki/wikicookbook/nextpageredirect
sub next_page {
    my ($c) = shift;

    my $redirect_url;
    if ( defined $c->flash->{next_page} ) {

        $redirect_url = $c->uri_for( $c->flash->{next_page} );

    } else {

        $redirect_url = $c->uri_for( '/' );

    }

    $c->res->redirect( $redirect_url );

}


1;
