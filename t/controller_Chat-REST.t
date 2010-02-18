use strict;
use warnings;
use Test::More;

BEGIN { use_ok 'Catalyst::Test', 'WWW::Hailo' }
BEGIN { use_ok 'WWW::Hailo::Controller::Chat::REST' }

ok( request('/chat/rest')->is_success, 'Request should succeed' );
done_testing();
