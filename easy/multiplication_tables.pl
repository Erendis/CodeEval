#!/usr/bin/perl -w

# CHALLENGE DESCRIPTION:
#
# Print out the grade school multiplication table upto 12*12.

use strict;
for (1..12) { my $x=$_; for (1..12) { print sprintf("%4d", $x*$_); } print "\n"; }
