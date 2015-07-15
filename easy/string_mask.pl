#!/usr/bin/perl -w
use strict;

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
	chomp;
	my ($w, $m) = split " ", $_;
	my @w = split "", $w; my @m = split "", $m;
	for my $i (0..$#w) { $w[$i] = chr(ord($w[$i])-(32*$m[$i])); }
	print @w;
	print "\n";
}

close FH;
