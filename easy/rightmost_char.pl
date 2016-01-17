#!/usr/bin/perl -w

# CHALLENGE DESCRIPTION:
#
# You  are given a string 'S' and a character 't'. Print out the position of the
# rightmost  1occurrence of 't' (case matters) in 'S' or -1 if there is none. The
# position to be printed out is zero based.

use strict;

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
    chomp;
    next if length($_) <= 0;
    my ($s, $c) = split ",", $_;
    print rindex($s, $c) . "\n";
}

close FH;
