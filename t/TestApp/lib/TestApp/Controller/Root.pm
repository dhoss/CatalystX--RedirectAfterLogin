package TestApp::Controller::Root;
use Moose;
use namespace::autoclean;
BEGIN { extends 'Catalyst::Controller'; }
#
# Sets the actions in this controller to be registered with no prefix
# so they function identically to actions created in MyApp.pm
#
__PACKAGE__->config->{namespace} = '';

=head1 NAME

TestApp::Controller::Root - Root Controller for TestApp

=head1 DESCRIPTION

[enter your description here]

=head1 METHODS

=cut

=head2 index

=cut

sub index : Path {
    my ($self, $c) = @_;
    $c->res->body('Fasdfasdfa');;
}

sub login : Local {
    my ($self, $c) = @_;
    if ( $c->req->param('username') eq 'blah' ) {
        $self->next_page(url=>'success');
    } else {
        $c->res->body('Failed!');
        $c->detach;
    }
}


sub success : Path {
    my ($self, $c) = @_;
    $c->res->body("Success!");

}

=head2 end

Attempt to render a view, if needed.

=cut

sub end : ActionClass('RenderView') {}

=head1 AUTHOR

Devin Austin,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
