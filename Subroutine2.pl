#!/usr/bin/perl
 
use strict;
use warnings;

my %hash1 = (

    a=>1,
    b=>2,
    c=>3,
);
my %hash2 = (

    d=>4,
    e=>5,
    f=>6,
);
my $value = 5;

my($keycount, $keycount1,$valcount, $valcount1)  = pass_ref($value, \%hash1, \%hash2);
print "The value $value is found in first hash'keys $keycount times\nThe value $value is found in first hash'values $valcount times\n";
print "The value $value is found in second hash'keys $keycount1 times\nThe value $value is found in second hash'values $valcount1 times\n";

sub pass_ref {
    my($val1,$hash_ref1,$hash_ref2) = @_;
    
    my ( $count1, $count2, $count3, $count4 ) = 0;
    if(exists $$hash_ref1{$val1} ) {
        $count1 = 1;
    }
    else {
        $count1 = 0;
    
    }
    if(exists $$hash_ref2{$val1} ) {
        $count2 = 1;
    }
    else {
        $count2 = 0;
    
    }
    $count3 = 0;
    foreach my $store(values %{$hash_ref1}) {
        if($store eq $val1) {       
            $count3++;
        }
    }
    $count4 = 0;
    foreach my $store1(values %{$hash_ref2}) {
        if($store1 eq $val1) {
            $count4++;
        }               
    }                      
    return $count1,$count2,$count3,$count4;
}
    
