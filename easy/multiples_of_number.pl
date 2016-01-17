#!/usr/bin/perl -w

# CHALLENGE DESCRIPTION:
#
# Given  numbers  x  and  n,  where  n  is  a power of 2, print out the smallest
# multiple  of  n  which  is  greater than or equal to x. Do not use division or
# modulo operator.

use strict;

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
    chomp;
    my ($x,$n) = split ",", $_; my $i = 0;
    while($x >= $n*++$i) { }
    print $n*$i . "\n";
}

close FH;
