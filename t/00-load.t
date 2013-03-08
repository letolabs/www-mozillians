#!/usr/bin/env perl
use strict;
use warnings;
use Test::Most;

BEGIN {
    use_ok( 'WWW::Mozillian' );
}

diag( "Testing WWW::Mozillian $WWW::Mozillian::VERSION, Perl $], $^X" );

done_testing;
