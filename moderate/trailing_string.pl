#!/usr/bin/perl -w

# CHALLENGE DESCRIPTION:
#
# There  are  two  strings:  A  and  B. Print 1 if string B occurs at the end of
# string A. Otherwise, print 0.

use strict;

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
    chomp; next if length($_) <= 0;
    my ($s1, $s2) = split ",", $_;
    print $s1 =~ m/$s2/ ? "1\n" : "0\n";
}

close FH;
