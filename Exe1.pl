#!/usr/bin/perl

use strict;
use warnings;
use Exer2;    #importing .pm
use Readonly;

#require "Exe.pl"; #importing pl file

our $VERSION = 1;

Readonly::Scalar my $NUM1 => 10;
Readonly::Scalar my $NUM2 => 20;
Readonly::Scalar my $NUM3 => 10;
Readonly::Scalar my $NUM4 => 20;
Readonly::Scalar my $NUM5 => 10;

#calling the .pm  file's subroutine
avg_num( $NUM1, $NUM2, $NUM3, $NUM4, $NUM5 );

avg_num( $NUM1, $NUM2 );

add_number;

#calling the .pl  file's subroutine
&avg_num( $NUM1, $NUM2, $NUM3, $NUM4, $NUM5 );

&avg_num( $NUM1, $NUM2 );

&add_number;

print "before Begin\n";
BEGIN {

print "In begin Start\n";

}
INIT {

print "In init block\n"

} 

CHECK {

print "In check\n";


}









