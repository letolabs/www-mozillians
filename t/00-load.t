#!/usr/bin/env perl
use strict;
use warnings;
use Test::Most;

BEGIN {
    use_ok( 'WWW::Mozillians' );
}

diag( "Testing WWW::Mozillian $WWW::Mozillians::VERSION, Perl $], $^X" );

done_testing;
