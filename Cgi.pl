#!/usr/bin/perl

use strict;
use warnings;
use CGI;
my $cgi = CGI->new;
 
print $cgi->header;
print $cgi->header(
    -type       => 'image/gif',
    -nph        => 1,
     -status     => '402 Payment required',
    -expires    => '+3d',
    # -cookie     => $cookie,
    -charset    => 'utf-8',
    -attachment => 'foo.gif',
    -Cost       => '$2.00'
);

