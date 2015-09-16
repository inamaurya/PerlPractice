#!/usr/bin/perl

use strict;
use warnings;

print "Enter the word :";

my $word=<STDIN>;

my $count=0;

chomp $word;

my $var = "D:/Demo/A.txt";

print "$var\n";
open(my $file_handle, "<A.txt") or die "Couldn't open A.txt, $!";

my $Line;

my @arrays;

while($Line = <$file_handle>) {

    chomp $Line;
    
    $Line =~ tr/a-z./a-z /;
    
    my @arrays = split(' ',$Line);
    
    foreach my $val (@arrays) {
    
        if($word eq $val) {
        
            $count++;
        }
    }
}
print "The $word is found $count times...\n";
close $file_handle;
                                                    
