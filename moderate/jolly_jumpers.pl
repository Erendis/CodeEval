#!/usr/bin/perl -w
use strict;

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
	chomp;
	my @n = split " ", $_; my $n = shift @n; my @s = (0) x ($n-1);

	for my $i (1..$#n)
	{
		my $d = abs($n[$i-1]-$n[$i]);
		$s[$d-1]++ unless ($d > ($n-1) || $d == 0);
	}
	print "@s" =~ m/0/ ? "Not jolly\n" : "Jolly\n";
}

close FH;
