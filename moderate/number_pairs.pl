#!/usr/bin/perl -w
use strict;

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
	chomp;
	next if length($_) <= 0;
	my @n = split /[,;]/, $_;
	my $s = pop @n;
	my $l = "";
	for my $i (0..($#n-1)) { for my $j ($i+1..$#n) { $l .= $n[$i] +$n[$j] == $s ? $n[$i] . ",". $n[$j] . ";" : ""; } }
	print length($l) > 0 ? substr($l,0,-1) . "\n" : "NULL\n";
}

close FH;
