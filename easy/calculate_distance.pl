#!/usr/bin/perl -w
use strict;

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
    $_ =~ s/[\(\),]//g;     my @n = split " ", $_;
    print sqrt(($n[2]-$n[0])**2 + ($n[3]-$n[1])**2) . "\n";
}

close FH;
