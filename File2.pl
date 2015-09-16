#!/usr/bin/perl

use strict;
use warnings;
use Path::Class;
use autodie; # die if problem reading or writing a file

my $dir = dir("/tmp"); # /tmp

my $file = $dir->file("file.txt"); # /tmp/file.txt

# Get a file_handle (IO::File object) you can write to
my $file_handle = $file->openw();

my @list = ('a', 'list', 'of', 'lines');

foreach my $line ( @list ) {
        # Add the line to the file
            $file_handle->print($line . "\n");
        
}

# As above but use open('>>') instead of openw()
 $file_handle = $file->open('>>');



$file = $dir->file("file.txt");

 Read in the entire contents of a file
 my $content = $file->slurp();

 # openr() returns an IO::File object to read from
 $file_handle = $file->openr();

 # Read in line at a time
 while( my $line = $file_handle->getline() ) {
         print $line;
         }


