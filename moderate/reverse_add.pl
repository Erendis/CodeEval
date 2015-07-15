#!/usr/bin/perl -w
use strict;

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
    chomp;
    my $n = $_;
    my $i = 0;
    while ($n !~ m/^((.)(?1)\2|.?)$/) { $n += reverse $n; $i++; }
    print "$i $n\n";
}

close FH;
