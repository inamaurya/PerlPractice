#!/usr/bin/perl

use strict;
use warnings;
use CPAN::Version;
open(my $file_handle, "<A.txt") or die "Couldn't open A.txt, $!";
my ($count, $count1, $count2, $count3) = (0,0,0,0);
while(my $line = <$file_handle>) {
    chomp $line;
    my @arrays = split(' ',$line);
    foreach my $val (@arrays) {
        #removing the . from words
        if($val =~m/\.$/) {
            chop $val;
        }    
        if($val =~ m/^[^aeiou]/) {
            if($val =~ m/[^aeiou]$/) {
                $count3++;
            }  
            else {
                $count1++;
            }
        }    
        elsif($val =~ m/[^aeiou]$/) {
            $count2++;
        }
    }
}
print "not start with vowel $count1\n";
print "not end with vowel $count2\n";
print "not start and end with vowel $count3\n";

