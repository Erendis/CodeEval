#!/usr/bin/perl -w
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
