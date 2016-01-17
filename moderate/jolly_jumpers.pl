#!/usr/bin/perl -w

# CHALLENGE DESCRIPTION:
#
# Credits: Programming Challenges by Steven S. Skiena and Miguel A. Revilla
#
# A   sequence of n > 0 integers is called a jolly jumper if the absolute values
# of  the  differences between successive elements take on all possible values 1
# through  n-1.  eg. 1 4 2 3 is a jolly jumper, because the absolute differences
# are  3,  2  and 1, respectively. The definition implies that any sequence of a
# single integer is a jolly jumper. Write a program to determine whether each of
# a number of sequences is a jolly jumper.

use strict;

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
    chomp;
    my ($n, @n) = split " ", $_; my @s = (0) x ($n-1);

    for my $i (1..$#n)
    {
        my $d = abs($n[$i-1]-$n[$i]);
        $s[$d-1]++ unless ($d > ($n-1) || $d == 0);
    }
    print "@s" =~ m/0/ ? "Not jolly\n" : "Jolly\n";
}

close FH;
