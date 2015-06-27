#!/usr/bin/perl -w
use strict;

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
	chomp; next if length($_) <= 0;
	my ($s1, $s2) = split ",", $_;
	print $s1 =~ m/$s2/ ? "1\n" : "0\n";
}

close FH;
