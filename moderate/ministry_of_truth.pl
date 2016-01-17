#!/usr/bin/perl -w

# CHALLENGE DESCRIPTION:
#
# It's  1984,  and  you are working as an official at the Ministry of Truth. You
# have  intersected  a message subjected to Big Brother's doctrine. Your task is
# to  delete  letters from certain "utterances" in order to replace them with an
# "utterance" approved by the Ministry.
#
# A  "word"  is  a  single  sequence  of  Latin letters, and an "utterance" is a
# sequence of multiple words and spaces.
#
# To compare two "utterances," you have to replace all blocks of spaces with one
# space.   Utterances  are considered to be identical when resulting expressions
# match.
#
# One  line  contains  two different expressions separated by semicolon ';'. The
# first  expression  is  the  original  utterance,  and  the  second  one is the
# utterance you want to get.
#
# If  you  cannot fulfill the order, print a single line «I cannot fix history».
# Otherwise, output the original utterance by replacing the letters that must be
# erased  with  underscore  and  by  replacing all blocks of white spaces with a
# single white space.

use strict;

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
    chomp;
    next if length($_) <= 0;
    $_ =~ s/\s+/ /g;
    my (@s, @u) = split("", (split ";", $_));
    my $i = 0;
    my $j = 0;

    # TODO

    print length($msg) <= 0 ? "I cannot fix history\n" : "$msg\n";
}

close FH;
