#!/usr/bin/perl -w

# CHALLENGE DESCRIPTION:
#
# You  have  coordinates of 2 points and need to find the distance between them.

use strict;

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
    $_ =~ s/[\(\),]//g; my @n = split " ", $_;
    print sqrt(($n[2]-$n[0])**2 + ($n[3]-$n[1])**2) . "\n";
}

close FH;
