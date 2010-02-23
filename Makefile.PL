use inc::Module::Install;

name           ('Hailo-UI-Web');
perl_version   ('5.010');
author         ('Ævar Arnfjörð Bjarmason <avar@cpan.org>');
all_from       ('lib/Hailo/UI/Web.pm');
license        ('perl');
homepage       ('http://search.cpan.org/dist/Hailo-UI-Web');
githubmeta     ();
bugtracker     ('http://github.com/avar/hailo-ui-web/issues');
resources      (Ratings => 'http://cpanratings.perl.org/d/Hailo-UI-Web');

requires 'Catalyst::Runtime' => '5.8002';
requires 'Catalyst::Plugin::ConfigLoader';
requires 'Catalyst::Plugin::Static::Simple';
requires 'Catalyst::Plugin::Unicode';
requires 'Catalyst::Action::RenderView';
requires 'Catalyst::View::TT';
requires 'Catalyst::Controller::REST';
requires 'Catalyst::Log::Log4perl';
requires 'Catalyst::Model::Adaptor';
requires 'Moose';
requires 'Hailo';
requires 'namespace::autoclean';
requires 'Config::General'; # This should reflect the config file format you've chosen
                 # See Catalyst::Plugin::ConfigLoader for supported formats
test_requires 'Test::More' => '0.88';
catalyst;

install_script glob('script/*.pl');
auto_install;
WriteAll;
