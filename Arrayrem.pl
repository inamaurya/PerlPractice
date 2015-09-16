#!/usr/bin/perl

use strict;
use warnings;

our $VERSION = 1;

Readonly::Scalar my $NUM0  => 0;
Readonly::Scalar my $NUM1  => 1;
Readonly::Scalar my $NUM2  => 2;
Readonly::Scalar my $NUM3  => 3;
Readonly::Scalar my $NUM4  => 4;
Readonly::Scalar my $NUM5  => 5;
Readonly::Scalar my $NUM6  => 0;
Readonly::Scalar my $NUM7  => 1;
Readonly::Scalar my $NUM8  => 2;
Readonly::Scalar my $NUM9  => 3;
Readonly::Scalar my $NUM10 => 4;
Readonly::Scalar my $NUM11 => 5;
my @array1 = ( $NUM0, $NUM1, $NUM2, $NUM3, $NUM4, $NUM5, $NUM6 );
my @array2 = ( $NUM0, $NUM1, $NUM2, $NUM3, $NUM4, $NUM5, $NUM6 );

print "Array 1 has the following:\n";
foreach (@array1) {
    print;
    print "\n";
}
print "Array 2 has the following:\n";
foreach (@array2) {
    print;
    print "\n";
}

my @array3;
my @array4;
my $i = 0;
my $j = 0;
my $flag;
foreach my $val1 (@array1) {

    foreach my $val2 (@array2) {

        if ( $val1 == $val2 ) {

            $flag = 0;

            last;

        }
        else {

            $flag = 1;
        }

    }
    if ( $flag == 1 ) {

        @array3[$i] = $val1;
        $i++;
    }
}
foreach my $val2 (@array2) {

    foreach my $val1 (@array1) {

        if ( $val1 == $val2 ) {

            $flag = 0;

            last;

        }
        else {

            $flag = 1;
        }

    }
    if ( $flag == 1 ) {

        @array4[$j] = $val2;
        $j++;
    }
}
print "\nAfter deleting the common elements.......:\n\n";

print "Array 1 has the following:\n";
foreach (@array3) {
    print;
    print "\n";
}
print "Array 2 has the following:\n";
foreach (@array4) {
    print;
    print "\n";
}
