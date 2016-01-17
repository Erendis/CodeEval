#!/usr/bin/perl -w

# CHALLENGE DESCRIPTION:
#
# Credits: Programming Challenges by Steven S. Skiena and Miguel A. Revilla
#
# The  problem  is as follows: choose a number, reverse its digits and add it to
# the  original. If the sum is not a palindrome (which means, it is not the same
# number from left to right and right to left), repeat this procedure.
#
# For example:
#
#  195 (initial number) + 591 (reverse of initial number) = 786
#  786 +  687 = 1473
# 1473 + 3741 = 5214
# 5214 + 4125 = 9339 (palindrome)
#
# In  this  particular case the palindrome 9339 appeared after the 4th addition.
# This method leads to palindromes in a few step for almost all of the integers.
# But  there  are  interesting  exceptions. 196 is the first number for which no
# palindrome  has  been  found. It is not proven though, that there is no such a
# palindrome.

use strict;

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
    chomp;
    my $n = $_;
    my $i = 0;
    while ($n !~ m/^((.)(?1)\2|.?)$/) { $n += reverse $n; $i++; }
    print "$i $n\n";
}

close FH;
