#! /usr/bin/perl

use strict;
use warnings;
use Readonly;

our $VERSION = 1;

Readonly::Scalar my $NUM0 => 0;
Readonly::Scalar my $NUM1 => 1;
Readonly::Scalar my $NUM2 => 2;
Readonly::Scalar my $NUM3 => 3;
Readonly::Scalar my $NUM4 => 4;
Readonly::Scalar my $NUM5 => 5;

my @array1 = ( $NUM1, $NUM2, $NUM3, $NUM4, $NUM5 );
my @array2 = ( $NUM1, $NUM2, $NUM3, $NUM4, $NUM5 );

# output 3,5,5,7,7,9,7,9

my ( $val1, $val2 ) = two_array_sub( \@array2, \@array2 );

my @array3 = @{$val1};

print 'The reference of array1 is ', ref($val1), "\n";

my @array4 = @{$val2};

print "output @array3\nsecond is @array4\n";

sub two_array_sub {

    my ( $aref, $bref ) = @_;

    my @array1 = @{$aref};
    print "@array1\n";

    my @array2 = @{$bref};

    print "@array2\n";
    my $p = @array1;
    my $q = @array2;

    foreach my $count ( 0 .. $p ) {
        $array1[$count] += $NUM2;
    }

    foreach my $count ( 0 .. $p ) {
        $array2[$count] += $NUM3;
    }

    print "After changes : @array1\n@array2\n";
    return ( \@array1, \@array2 );

}

