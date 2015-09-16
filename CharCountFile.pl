#!usr/bin/perl

use strict;
use warnings;

print "Enter the char :";

my $char=<>;

my $count=0;

chomp $char;

open(DATA, "<A.txt") or die "Couldn't open file file.txt, $!";

my $Line;

my @arrays;

while(<DATA>) {
    
    $Line= $_;
    
    chomp $Line;
    
    @arrays= split('',$Line);
    
    foreach my $val (@arrays) {
    
        if($char eq $val) {
         
            $count++;
        }
    }  
}

print "The $char is found $count times...\n";












