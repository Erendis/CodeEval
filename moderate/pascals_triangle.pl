#!/usr/bin/perl -w

# CHALLENGE DESCRIPTION:
#
# A  Pascals  triangle  row  is  constructed  by looking at the previous row and
# adding the numbers to its left and right to arrive at the new value. If either
# the  number to its left/right is not present, substitute a zero in it's place.

use strict;

open FH, "<", $ARGV[0] or die $!;
my @aa = ([1], [1,1]);

while (<FH>)
{
    chomp;
    next if (length($_) <= 0 || $_ !~ m/[0-9]+/);
    my $n = $_;

    if($n > 2)
    {
        for my $i (2..$n-1)
        {
            $aa[$i][0] = 1; $aa[$i][$i] = 1;
            for my $j (1..$i-1) { $aa[$i][$j] = $aa[$i-1][$j-1] + $aa[$i-1][$j]; }
        }
    }

    for my $i (0..$n-1) { for my $j (0..$i) { print $aa[$i][$j] . " "; } }
    print "\n";
}

close FH;
