#!/usr/bin/perl

use strict;
use warnings;
use CPAN::Version;
open(my $file_handle, "<A.txt") or die "Couldn't open A.txt, $!";
my ($not_start_with_vowel, $not_end_with_vowel, $not_startend_with_vowel, $squashe_count) = (0)x4;
while(my $line = <$file_handle>) {
    chomp $line;
    my @arrays = split(' ',$line);
    foreach my $val (@arrays) {
        #removing the . from words
        if($val =~m/\.$/) {
            chop $val;
        }
        #not starting with vowel
        if($val =~ m/^[^aeiou]/ ) {
            $not_start_with_vowel++;
        }
        #not ending with vowel 
        if($val =~ m/[^aeiou]$/) {
            $not_end_with_vowel++;
        }
        #not start and end with vowel
        if($val =~ m/^[^aeiou][\w]*[^aeiou]$/ | $val =~ m/^[^aeiou]$/ ) {
            $not_startend_with_vowel++;
        }
        #find the start_with_vowel of squashe
         my $val1 = $val;
         $val1 =~ tr/[a-z]/[a-z]/s;
         if($val1 ne $val) {
            $squashe_count++;
        }
    }                 
}
print "The not starting with vowel  is found $not_start_with_vowel times...\n";
print "The not ending with vowel  is found $not_end_with_vowel times...\n";
print "The not starting and ending with vowel  is found $not_startend_with_vowel times...\n";
print "The Squashe words are found $squashe_count times...\n";
close $file_handle;

my $string = "ajazzzy";
print "$string\n";
my $store = ($string =~ tr/[a-y]z/[b-z]a/);
print "$string :$store\n";

$string =~ tr/a/(?=.*[\d])/;
print "$string\n";
