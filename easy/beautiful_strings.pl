#!/usr/bin/perl -w
use strict;

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
	chomp;
	$_ =~ s/[^a-zA-Z]//g;
	my @s = split "", lc($_); my $s = 0; my %s; foreach (@s) { $s{$_}++; }
	my $n = 26;
	foreach (sort { $s{$b} <=> $s{$a} } keys(%s)) { $s+=$s{$_}*$n--; }
	print "$s\n";
}

close FH;
