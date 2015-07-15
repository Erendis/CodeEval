#!/usr/bin/perl -w
use strict;

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
	chomp;
	next if length($_) <= 0;
	my ($s, $c) = split ",", $_;
	print rindex($s, $c) . "\n";
}

close FH;

