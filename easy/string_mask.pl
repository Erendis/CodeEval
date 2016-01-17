#!/usr/bin/perl -w

# CHALLENGE DESCRIPTION:
#
# You’ve  got  a  binary  code  which  has  to be buried among words in order to
# unconsciously pass the cipher.
# Create  a  program  that  would  cover  the word with a binary mask. If, while
# covering,  a  letter finds itself as 1, you have to change its register to the
# upper one, if it’s 0, leave it as it is. Words are always in lower case and in
# the same row with the binary mask.

use strict;

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
    chomp;
    my (@w, @m) = split("", (split " ", $_));
    for my $i (0..$#w) { $w[$i] = chr(ord($w[$i])-(32*$m[$i])); }
    print "@w\n";
}

close FH;
