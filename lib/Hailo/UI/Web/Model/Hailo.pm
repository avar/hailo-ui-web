package Hailo::UI::Web::Model::Hailo;
use Moose;
use namespace::autoclean;

extends 'Catalyst::Model::Adaptor';

=head1 NAME

Hailo::UI::Web::Model::Hailo - Catalyst Model Adaptor for L<Hailo>

=head1 AUTHOR

E<AElig>var ArnfjE<ouml>rE<eth> Bjarmason <avar@cpan.org>

=head1 LICENSE

Copyright 2010 <<AElig>var ArnfjE<ouml>rE<eth> Bjarmason <avar@cpan.org>

This program is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->config( class => 'Hailo' );
__PACKAGE__->meta->make_immutable;

