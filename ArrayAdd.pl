#!/usr/bin/perl

use strict;
use warnings;
use Readonly;

our $VERSION = 1;

Readonly::Scalar my $NUM1  => 1;
Readonly::Scalar my $NUM2  => 2;
Readonly::Scalar my $NUM3  => 3;
Readonly::Scalar my $NUM4  => 4;
Readonly::Scalar my $NUM5  => 5;
Readonly::Scalar my $NUM6  => 10;
Readonly::Scalar my $NUM7  => 11;
Readonly::Scalar my $NUM8  => 12;
Readonly::Scalar my $NUM9  => 13;
Readonly::Scalar my $NUM10 => 14;
my @arrays1 = ( $NUM1, $NUM2, $NUM3, $NUM4, $NUM5 );
my @arrays2 = ( $NUM6, $NUM7, $NUM8, $NUM9, $NUM10 );

my ( $array_ref1, $array_ref2 ) = pass_array( \@arrays1, \@arrays2 );

my @arrays5 = @{$array_ref1};
my @arrays6 = @{$array_ref2};

print "First arrays is :@arrays5\n Second arrays is :@arrays6\n";

sub pass_array {

    my ( $array_ref3, $array_ref4 ) = @_;

    my @arrays3 = @{$array_ref3};
    my @arrays4 = @{$array_ref4};

    print "@arrays3\n";
    print "@arrays4\n";

    my $p = @arrays3;
    my $q = @arrays4;
    my $m = 0;
    my $n = 0;
    for ( $m .. $p-1 ) {

        $arrays3[ $m++ ] += $NUM2;

    }
    for ( $n .. $q-1 ) {

        $arrays4[ $n++ ] += $NUM3;

    }

    return \@arrays3, \@arrays4;

}
