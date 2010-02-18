use strict;
use warnings;
use Test::More;

BEGIN { use_ok 'Catalyst::Test', 'WWW::Hailo' }
BEGIN { use_ok 'WWW::Hailo::Controller::API' }

ok( !request('/api/learn_reply')->is_success, 'Request needs text=' );
ok(  request('/api/learn_reply?text=foo')->is_success, 'Request OK' );
ok( !request('/api/reply')->is_success, 'Request needs text=' );
ok(  request('/api/reply?text=foo')->is_success, 'Request OK' );
done_testing();