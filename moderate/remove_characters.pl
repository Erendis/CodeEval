#!/usr/bin/perl -w

# CHALLENGE DESCRIPTION:
#
# Write a program which removes specific characters from a string.

use strict;

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
    my ($s,$c) = split ", ", $_;
    $s =~ s/[$c]//g;
    print $s . "\n";
}

close FH;
