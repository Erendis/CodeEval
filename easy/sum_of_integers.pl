#!/usr/bin/perl -w
use strict;

open FH, "<", $ARGV[0] or die $!;

my $sum = 0;
while (<FH>) { chomp; $sum += $_; } print $sum;

close FH;
