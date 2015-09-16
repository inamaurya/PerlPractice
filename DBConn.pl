#!/usr/bin/perl

use strict;
use warnings;
use DBI;
use Carp;

our $VERSION = 1;

my @driver_names = DBI->available_drivers;
foreach (@driver_names) {

    print;
    print "\n";
}

my $driver   = 'ODBC';
my $database = 'apa';
my $dsn      = "DBI:$driver:$database";
my $userid   = 'apa';
my $password = 'apa';
my $err      = 'errstr';
my $dbh      = DBI->connect( $dsn, $userid, $password ) or croak $DBI::errstr;
my $sth      = $dbh->prepare('select last_name,first_name from users');
$sth->execute() or croak $DBI::errstr;

while ( my @row = $sth->fetchrow_array ) {
    # print "lname: $row[0]  fname: $row[1]\n";
}
$sth->finish();
print "########################## using the binding #################\n";

#print 'Enter the name:';
my $name = <>;
if ( $name =~ m/^[a,A]/xms ) {
    chomp $name;
    $name = $name . q{%};
    my $sth1 = $dbh->prepare(
        'select first_name,last_name from users where last_name like ?');
    $sth1->execute($name) or croak $DBI::errstr;
    while ( my @row = $sth1->fetchrow_array ) {
        print "fname: $row[0]  lname: $row[1]\n";
    }
    $sth1->finish();
}
else {
    print "match not found\n";
}
$dbh->disconnect;
