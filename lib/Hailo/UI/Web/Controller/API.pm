package Hailo::UI::Web::Controller::API;
use 5.10.0;
use Moose;
use namespace::autoclean;

BEGIN {extends 'Catalyst::Controller::REST'; }

=head1 NAME

Hailo::UI::Web::Controller::API - Catalyst Controller

=head1 METHODS

=cut

=head2 index

=cut

sub learn_reply : Local : ActionClass('REST') { }
sub reply : Local : ActionClass('REST') { }

sub learn_reply_GET {
    my ( $self, $c ) = @_;
    $self->x_reply($c, "learn_reply");
}

sub reply_GET {
    my ( $self, $c ) = @_;
    $self->x_reply($c, "reply");
}

sub x_reply :Private {
    my ( $self, $c, $method ) = @_;

    if ($c->request->param("text")) {
       chomp(my $nick = $c->request->param("nick") // "Anonymous");
       chomp(my $text = $c->request->param("text"));

       my $hailo = $c->model("Hailo");
       my $reply = $hailo->$method($text) // "I don't know enough to answer you yet";

       my $ip = $c->request->address;
       $c->log->debug("$ip/$nick: $text = $reply");

       $self->status_ok(
           $c,
           entity => {
               nick => ref($hailo),
               text => $reply,
           },
       );
   } else {
       $self->status_bad_request(
           $c,
           message => "You must supply the text parameter"
       );
   }
}


=head1 AUTHOR

E<AElig>var ArnfjE<ouml>rE<eth> Bjarmason <avar@cpan.org>

=head1 LICENSE

Copyright 2010 <<AElig>var ArnfjE<ouml>rE<eth> Bjarmason <avar@cpan.org>

This program is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->config(default => 'text/x-yaml');
__PACKAGE__->meta->make_immutable;

