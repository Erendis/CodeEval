#!/usr/bin/perl -w

# CHALLENGE DESCRIPTION:
#
# You  are given a sorted array of positive integers and a number 'X'. Print out
# all  pairs of numbers whose sum is equal to X. Print out only unique pairs and
# the pairs should be in ascending order

use strict;

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
    chomp;
    next if length($_) <= 0;
    my @n = split /[,;]/, $_;
    my $s = pop @n;
    my $l = "";
    for my $i (0..($#n-1))
    {
        for my $j ($i+1..$#n)
        {
            $l .= $n[$i] +$n[$j] == $s ? $n[$i] . ",". $n[$j] . ";" : "";
        }
    }
    print length($l) > 0 ? substr($l,0,-1) . "\n" : "NULL\n";
}

close FH;
