#!\usr\bin\perl

use strict;
use warnings;

my @arrays1 = (1,2,3,4,5,6,7,8,9);
my @arrays2 = (2,3,,5,5,5,5,5,5,5,6,8,9,5,6,8,6);
my $value = 5;
my $count = 0;
my $count1= 0;


my $call = pass_ref($value, \@arrays1, \@arrays2);
print "The value $value is found in first array $count times\nThe value $value is found in second array $count1 times\n";

sub pass_ref {

    my($val1,$val2,$val3) = @_;
    
    foreach my $store(@{$val2}) {
    
        if($store == $val1) {
            
            $count++;
        }
    } 
    foreach my $store1(@{$val3}) {
    
        if($store1 == $val1) {
        
            $count1++;
         }
    }
    return 1;    
}
