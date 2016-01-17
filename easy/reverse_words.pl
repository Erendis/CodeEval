#!/usr/bin/perl -w

# CHALLENGE DESCRIPTION:
#
# Write a program which reverses the words in an input sentence.

use strict;

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
    chomp;
    my @a = split " ", $_;
    while($#a >= 0) { print((pop @a) . " "); } print "\n";
}

close FH;
