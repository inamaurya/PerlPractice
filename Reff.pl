#..................



use strict;
use warnings;



my $foo=100;

$foo=\$foo;

print "$$foo",ref($foo),"\n";

