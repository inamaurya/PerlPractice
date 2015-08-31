#!/usr/bin/perl

use strict;
use warnings;


print join("",  reverse "world", "Hello", "ajay").qq{\n}; # Hello, world

my @arrays = ('ajay','kumar','maurya');

my $rec = join(':', @arrays);

print "$rec\n";

print "End\n";

my $val = "ajay";

my $store = chop($val);

print "The val is:$val\n";

print "The store is:$store\n";

my @arrays1 = ("ajay", 1, 3, "kumar", "maurya");

my $store1 = chop(@arrays1);

print "Arrays1 is:@arrays1\n";

print "The store1 is:$store1\n";

my %hash = (

    "ajay" => "ajay",
    "kumar" => "kumar",
    "maurya" => "maurya",

);

my $store2 = chop(%hash);

print "The store2 is: $store2\n";

while( my($key, $val) = each %hash ) {

    print "The key is $key: and value is $val\n";

}
