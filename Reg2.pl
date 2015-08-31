#!/usr/bin/perl

use strict;
use warnings;
use POSIX;

our $VERSION = 1;

my $mail_id = 'a25999@2aa--3gmail.com';

if ( $mail_id =~ m/^\w+\@([[:alnum:]\-]{1,}[.]){1,}[[:alnum:]\-]{2,6}$/xms ) {

    print "Valid Email_id\n";
}
else {
    
    print "Invalid Email_id\n";
}

my $string = 'ajay25999@gmail.com';

if ( $string =~ m/^\w+\@[[:lower:]]{1,}[.][[:lower:]]{2,6}$/xms ) {
    
    print "valid my\n";
}
else {
    
    print "Invalid mine\n";
}

my $password = '12ujkfAFHGH';

if ( $password =~ m/(?=.*\d)(?=.*[[:lower:]])(?=.[[:upper:]]).{6,20}/xms ) {

    print "valid password\n";
}
else {
    print "Invalid password\n";
}

if ( $password =~ m/^(?=.*[[:lower:]])(?=.*[[:upper:]])(?=.*\d).{8,15}$/xms ) {

    print "valid new password\n";

}
else {

    print "invalid new password\n";
}
my $string1 = 'Aja5y';

if ( $string1 =~ m/[[:alpha:]]/xms ) {

    print 'Last yes';
}

else {

    print 'Last no';
}

