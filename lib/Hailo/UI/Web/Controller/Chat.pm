package Hailo::UI::Web::Controller::Chat;
use Moose;
use Hailo;
use Hailo::UI::Web;
use namespace::autoclean;

BEGIN {extends 'Catalyst::Controller'; }

=head1 NAME

Hailo::UI::Web::Controller::Chat - Chat with Hailo

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->stash->{ui_version}    = $Hailo::UI::Web::VERSION;
    $c->stash->{hailo_version} = $Hailo::VERSION;

    $c->stash->{template} = 'chat.tt';
}

=head1 AUTHOR

E<AElig>var ArnfjE<ouml>rE<eth> Bjarmason <avar@cpan.org>

=head1 LICENSE

Copyright 2010 <<AElig>var ArnfjE<ouml>rE<eth> Bjarmason <avar@cpan.org>

This program is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

