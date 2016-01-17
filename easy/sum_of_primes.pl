#!/usr/bin/perl -w

# CHALLENGE DESCRIPTION:
#
# Write a program which determines the sum of the first 1000 prime numbers.

use strict;

sub pr { my $n = shift; for(2..sqrt($n)) { if($n % $_ == 0) { return 0 }; } return 1; }

my ($sum, $cnt, $i) = split "", "002";

while ($cnt < 1000) { if(pr($i)) { $sum += $i; $cnt++; } $i++; }

print $sum;
