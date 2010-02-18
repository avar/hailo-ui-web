package WWW::Hailo::Controller::Chat::REST;
use 5.10.0;
use Moose;
use Data::Dump 'dump';
use namespace::autoclean;

BEGIN {extends 'Catalyst::Controller::REST'; }

=head1 NAME

WWW::Hailo::Controller::Chat::REST - Catalyst Controller

=head1 METHODS

=cut


=head2 index

=cut

sub reply      : Local : ActionClass('REST') { }

sub reply_GET {
    my ( $self, $c ) = @_;

    $self->status_ok(
        $c,
        entity => {
            nick => "Hailo",
            text => "Foobar",
        },
    );
}

=head1 AUTHOR

E<AElig>var ArnfjE<ouml>rE<eth> Bjarmason <avar@cpan.org>

=head1 LICENSE

Copyright 2010 <<AElig>var ArnfjE<ouml>rE<eth> Bjarmason <avar@cpan.org>

This program is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

