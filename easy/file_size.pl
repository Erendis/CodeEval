#!/usr/bin/perl -w

# CHALLENGE DESCRIPTION:
#
# Print the size of a file in bytes.

use strict;

my $fn = $ARGV[0];

open FH, "<", $ARGV[0] or die $!; close FH;

print -s $fn;
