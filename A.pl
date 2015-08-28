#!/usr/bin/perl

use strict;
use warnings;


print join("",  reverse "world", "Hello", "ajay").qq{\n}; # Hello, world

my @arrays = ('ajay','kumar','maurya');

my $rec = join(':', @arrays);

 print "$rec\n"; 
 
 print "End\n";

