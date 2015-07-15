#!/usr/bin/perl -w
use strict;

sub dec2bin
{
	my $str = unpack("B32", pack("N", shift));
	$str =~ s/^0+(?=\d)//;
	return $str;
}

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
	my ($n,$b1,$b2) = split ",", $_;
	my @n = split "", dec2bin($n);
	print $n[-$b1] eq $n[-$b2] ? "true\n" : "false\n";
}

close FH;
