#!/usr/bin/perl -w
use strict;

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
	chomp;
	next if length($_) <= 0;
	$_ =~ s/\s+/ /g;
	my ($s, $u) = split ";", $_;
	my @s = split "", $s;
	my @u = split "", $u;
	my $i = 0;
	my $j = 0;

	print length($msg) <= 0 ? "I cannot fix history\n" : "$msg\n";
}

close FH;
