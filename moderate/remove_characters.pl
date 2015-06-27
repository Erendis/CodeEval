#!/usr/bin/perl -w
use strict;

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
	my ($s,$c) = split ", ", $_;
	$s =~ s/[$c]//g;
	print $s . "\n";
}

close FH;
