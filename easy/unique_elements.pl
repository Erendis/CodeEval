#!/usr/bin/perl -w

# CHALLENGE DESCRIPTION:
#
# You  are  given a sorted list of numbers with duplicates. Print out the sorted
# list with duplicates removed.

use strict;

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
    chomp;
    my @n = split ",", $_; my $l; my $p = -1;
    for (0..$#n) { $l .= "$n[$_]," if $n[$_] != $p; $p = $n[$_]; }
    print substr($l, 0, -1) . "\n";
}

close FH;
