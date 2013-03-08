#!/usr/bin/env perl
use strict;
use warnings;
use Test::Most;

use_ok( 'WWW::Mozillians' );

throws_ok { WWW::Mozillians->new } qr/\(api_key\) is required/;

done_testing;
