use strict;
use warnings;
use Test::More;

BEGIN { use_ok 'Catalyst::Test', 'Hailo::UI::Web' }
BEGIN { use_ok 'Hailo::UI::Web::Controller::API' }

ok( !request('/api/learn_reply')->is_success, 'Request needs text=' );
ok(  request('/api/learn_reply?text=foo')->is_success, 'Request OK' );
ok( !request('/api/reply')->is_success, 'Request needs text=' );
ok(  request('/api/reply?text=foo')->is_success, 'Request OK' );
done_testing();
