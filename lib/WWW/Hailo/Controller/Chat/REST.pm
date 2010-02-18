package WWW::Hailo::Controller::Chat::REST;
use Moose;
use namespace::autoclean;

BEGIN {extends 'Catalyst::Controller'; }

=head1 NAME

WWW::Hailo::Controller::Chat::REST - Catalyst Controller

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->response->body('Matched WWW::Hailo::Controller::Chat::REST in Chat::REST.');
}


=head1 AUTHOR

E<AElig>var ArnfjE<ouml>rE<eth> Bjarmason <avar@cpan.org>

=head1 LICENSE

Copyright 2010 <<AElig>var ArnfjE<ouml>rE<eth> Bjarmason <avar@cpan.org>

This program is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

