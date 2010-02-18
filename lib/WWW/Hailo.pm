package WWW::Hailo;
use Moose;
use namespace::autoclean;

use Catalyst::Runtime 5.80;
use Catalyst::Log::Log4perl;

use Catalyst qw/
    Unicode
    ConfigLoader
    Static::Simple
/;

extends 'Catalyst';

our $VERSION = '0.01';

# Configure the application.
#
# Note that settings in www_hailo.conf (or other external
# configuration file that you set up manually) take precedence
# over this when using ConfigLoader. Thus configuration
# details given here can function as a default configuration,
# with an external configuration file acting as an override for
# local deployment.

__PACKAGE__->config(
    name => 'WWW::Hailo',
    # Disable deprecated behavior needed by old applications
    disable_component_resolution_regex_fallback => 1,
);

# Start the application
__PACKAGE__->setup();

# Set up logging
__PACKAGE__->log(Catalyst::Log::Log4perl->new(__PACKAGE__->config->{'log4perl_config'}));

=head1 NAME

WWW::Hailo - Simple Web interface to L<Hailo>

=head1 SYNOPSIS

    script/www_hailo_server.pl

=head1 DESCRIPTION

This is a simple jQuery powered web UI to the L<Hailo> conversation
bot.

=head1 SEE ALSO

L<WWW::Hailo::Controller::Root>, L<Catalyst>

=head1 AUTHOR

E<AElig>var ArnfjE<ouml>rE<eth> Bjarmason <avar@cpan.org>

=head1 LICENSE

Copyright 2010 <<AElig>var ArnfjE<ouml>rE<eth> Bjarmason <avar@cpan.org>

This program is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
