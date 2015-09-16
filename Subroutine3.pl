#!/usr/bin/perl

use strict;
use warnings;
use Algorithm-AM-2.32; 
my %hash1 = (

    a=>1,
    b=>2,
    c=>3,
);
BEGIN {

push @INC, Algorithm-AM-2.32;


}

my @arrays = (1,2,3,4,5,6,7);

my ($hash_ref, $array_ref) = swap_ref(\%hash1, \@arrays);

print "After swapping the array and hash\n";

print "Array is @{$array_ref}";
while(my($key, $value) = each %{$hash_ref}) {

    print "Key is $key: value is $value\n";

}

sub swap_ref {

    my($val1, $val2) = @_;
    my @key = keys %{$val1};
    %hash1 = ();
    foreach my $store1(@{$val2}) {
        $hash1{$store1} = 1;
        print "$hash1{$store1}" 
    }
    return \%hash1,\@key;



}


