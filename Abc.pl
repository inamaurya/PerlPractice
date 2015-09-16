#!/usr/bin/perl

use strict;
use warnings;


print join("",  reverse "world", "Hello", "ajay").qq{\n}; # Hello, world

my @arrays = ('ajay','kumar','maurya');

my $rec = join(':', @arrays);

 print "$rec\n";

  print "End\n";
 
my $val = "Hi my name is ajay";

my $val1 = "1";
if($val =~ m/\B(ja)\B/ ) {

    print "yes\n";
}
else {

    print "no\n";

}
 if($val1 =~ m/\w/ ) {

         print "yes\n";
     }
     else {

             print "no\n";

         }
   my $val2 = "abbc";
   
 if($val2 =~ m/ab?c/ ) {
   
     print "yes\n";
 }
 else {

     print "no\n";
 }

 print "Enter the proper digit\n";

 my $val3 = <>;
 
 if($val3 =~ m/^-?\d+$|^-?0[xX][\da-fA-F]+$/) {
 
    print "match\n";
 
 }
 else {
 
     print "not match\n";
 }

 print "Enter the proper date format\n";
=cut

 my $val4 = <>;

 if($val4 =~ m/^((?:19|20)\d\d)[- /.](0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])$/) {

    print "date match\n";

 }
 
 else {

    print "date not match\n";
 
 }
=cut
            my  $hRef = {
                     1 => 'one', 2 => 'two',
                     3 => 'three', 4 => 'four', 5 => undef
                 };
                  
                 print "found 1\n" if exists $hRef->{1};
                  
                 print "found 5\n" if exists $$hRef{5};
                  
                 print "the key 6 doesn't exist\n" if !exists $$hRef{6};
                  
                 exists $$hRef{7} || print "the key 7 doesn't exist\n";




                  my  %hRef2 = {
                       1 => 'one', 2 => 'two',
                        3 => 'three', 4 => 'four', 5 => undef
                         };
                         my $hRef1 = \%hRef2;
                          print "found 1\n" if exists $hRef1->{1};
                           print "found 5\n" if exists %$hRef1{5};
                           print "the key 6 doesn't exist\n" if !exists $$hRef1{6};
                            exists $$hRef1{7} || print "the key 7 doesn't exist\n";
                            
