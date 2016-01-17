#!/usr/bin/perl -w

# CHALLENGE DESCRIPTION:
#
# Print the odd numbers from 1 to 99.

use strict;
foreach my $i ( map { 2*$_+1 } 0..49 ) { print $i . "\n"; }
