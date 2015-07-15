#!/usr/bin/perl -w
use strict;

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
	my @a  = split ' ', $_;
	my $d1 = shift @a;
	my $d2 = shift @a;
	my $n  = shift @a;
	for (1..$n)
	{
		print $_ unless ($_ % $d1 == 0) || ($_ % $d2 == 0);
		print (($_ % $d1 == 0 ? "F" : "") . ($_ % $d2 == 0 ? "B" : ""));
		print " ";
	}
	print "\n";
}

close FH;
