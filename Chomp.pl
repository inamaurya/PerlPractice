#!/usr/bin/perl

use strict;
use warnings;


print join("",  reverse "world", "Hello", "ajay").qq{\n}; # Hello, world

my @arrays = ('ajay','kumar','maurya');

my $rec = join(':', @arrays);

 print "$rec\n"; 
 
 print "End\n";

my $val = "ajay\n\n\n\n\n\n\n\n\n";

my $store = chomp($val);

 print "The val is:$val\n";

 print "The store is:$store\n";

my @arrays1 = ("ajay\n", 1, 3, "kumar\n", "maurya\n\n");

my $store1 = chomp(@arrays1);

 print "Arrays1 is:@arrays1\n";

 print "The store1 is:$store1\n";

my %hash = (

    "ajay\n" => "ajay1\n\n",
    "kumar\n" => "kumar\n\n",

);

my $store2 = chomp(%hash);

 print "The store2 is: $store2\n";

while( my($key, $val) = each %hash ) {

    print "The key is $key: and value is $val\n";

}





 
