#!/usr/bin/perl
#


@ages = (25, 30, 40);             
@names = ("John Paul", "Lisa", "Kumar");

print "$ages[0] = $ages[0]\n";
print "\$ages[1] = $ages[1]\n";
print "\$ages[2] = $ages[2]\n";
print "\$names[0] = $names[0]\n";
print "\$names[1] = $names[1]\n";
print "\$names[2] = $names[2]\n";


%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);

while(($key,$value)=each(%data))
{


    
print "$key -> $value/n";

}




print "\$data{'Lisa'} = $data{'Lisa'}\n";
print "\$data{'Kumar'} = $data{'Kumar'}\n";
