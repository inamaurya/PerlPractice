#!/usr/bin/perl
 
use strict;
use warnings;

## Open file to read
open(my $file_handle1, "<A.txt") or die "Couldn't open A.txt, $!";
#
## Open new file to write
open(my $file_handle2, ">B.txt") or die "Couldn't open B.txt, $!";
#
## Copy data from one file to another.
while(<$file_handle1>) {

    print "File1 is:$_";
    print $file_handle2 $_;
}
close $file_handle2;
open(my $file_handle2, "<B.txt") or die "Couldn't open B.txt, $!";

while(<$file_handle2>) {

    print "File2 is:$_";
    #print $file_handle2 $_;
}
        
close($file_handle1);
close($file_handle2);
