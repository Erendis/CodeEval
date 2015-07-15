#!/usr/bin/perl -w
use strict;

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
    chomp;
    my @a = split " ", $_;
    while ($#a >= 0) { print( (pop @a) . " ");} print "\n";
}

close FH;
