#!/usr/bin/perl

use strict;
use warnings;

my %hash1 = (

    a=>1,
    b=>2,
    c=>3,
    e=>1,

);

my %hash2 = (

    a=>5,
    b=>6,
    c=>7,
    d=>8,
    
);

my $hash_reff = passhash_ref(\%hash1,\%hash2);

while(my($key, $val) = each %{$hash_reff}) {

    print "The key is $key: value is $val\n";

}

sub passhash_ref {

    my($val1, $val2) = @_;
    my %hash;
    my @arrays;
    my $i = 0;
    while(my($key, $val) = each %{$val2}) {
    
        $arrays[$i++] = $val;
    
    }
    $i = 0;

    while(my($key, $val) = each %{$val1}) {
    
        $hash{$key} = $arrays[$i++];
        
    }

    return \%hash;
}
