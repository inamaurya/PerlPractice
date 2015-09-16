#!/usr/bin/perl

use strict;
use warnings;
use Readonly;

our $VERSION = 1;

Readonly::Scalar my $NUM1 => 1;
Readonly::Scalar my $NUM2 => 4;
Readonly::Scalar my $NUM3 => 2;
Readonly::Scalar my $NUM4 => 3;
Readonly::Scalar my $NUM5 => 2;
Readonly::Scalar my $NUM6 => 4;
Readonly::Scalar my $NUM7 => 2;
Readonly::Scalar my $NUM8 => 5;
Readonly::Scalar my $NUM9 => 4;

my @array1 = ( $NUM1, $NUM2, $NUM3, $NUM4, $NUM5, $NUM6, $NUM7, $NUM8, $NUM9 );

my %hash1;

foreach my $val1 (@array1) {
    $hash1{$val1}++;
}

while ( my ( $key, $value ) = each %hash1 ) {

    print "Value is $key :: $value times...\n";

}
