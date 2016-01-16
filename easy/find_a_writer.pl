#!/usr/bin/perl -w

# CHALLENGE DESCRIPTION:
#
# You  have  a set of rows with names of famous writers encoded inside. Each row
# is  divided into 2 parts by pipe char (|). The first part has a writer's name.
# The second part is a "key" to generate a name. Your goal is to go through each
# number  in the key (numbers are separated by space) left-to-right. Each number
# represents  a  position  in  the  1st  part  of  a row. This way you collect a
# writer's name which you have to output.

use strict;

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
    chomp;
    next if length($_) <= 0;
    my ($s, $n) = split /\| /, $_;
    foreach my $i (split " ", $n) { print substr($s, $i-1, 1); } print "\n";
}

close FH;
