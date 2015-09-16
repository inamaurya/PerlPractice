#!/usr/bin/perl

use strict;
use warnings;

my $string = '1003540';

if( $string =~ m/0{1,}/ and $string =~ m/1{1,}/ ) {
    
    print "Match found\n";
}
else {

    print "Match not found";
}
