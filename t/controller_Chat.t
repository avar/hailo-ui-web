use strict;
use warnings;
use Test::More;

BEGIN { use_ok 'Catalyst::Test', 'Hailo::UI::Web' }
BEGIN { use_ok 'Hailo::UI::Web::Controller::Chat' }

ok( request('/chat')->is_success, 'Request should succeed' );
done_testing();
