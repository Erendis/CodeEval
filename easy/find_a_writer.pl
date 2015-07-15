#!/usr/bin/perl -w
use strict;

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
    chomp;
    next if length($_) <= 0;
    my ($s, $n) = split /\| /, $_;
    foreach my $i (split " ", $n) { print substr($s, $i-1, 1); } print "\n";
}

close FH;
