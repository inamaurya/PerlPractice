#!/usr/bin/perl

use strict;
use warnings;

my $string = 'ajay $%&*m456456456aurya';

my @arrays = split q{}, $string;
my %hash;

foreach my $val1 (@arrays) {
    
    if( ($val1 =~ m/\w/)&&($val1 =~ m/\D/)) {
        
        $hash{$val1}++;
    }   
} 

while( my($key,$value) = each %hash ) {
    
    print "Value is $key :: $value times...\n";

}
