#!/usr/bin/perl -w

# CHALLENGE DESCRIPTION:
#
# Print out the sum of integers read from a file.

use strict;

open FH, "<", $ARGV[0] or die $!;

my $sum = 0;
while (<FH>) { chomp; $sum += $_; } print $sum;

close FH;
