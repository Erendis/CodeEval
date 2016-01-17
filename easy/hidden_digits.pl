#!/usr/bin/perl -w

# CHALLENGE DESCRIPTION:
#
# In  this  challenge you're given a random string containing hidden and visible
# digits. The digits are hidden behind lower case latin letters as follows: 0 is
# behind  'a',  1 is behind ' b ' etc., 9 is behind 'j'. Any other symbol in the
# string  means  nothing  and has to be ignored. So the challenge is to find all
# visible  and  hidden digits in the string and print them out in order of their
# appearance.

use strict;

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
    chomp;
    $_ =~ s/[^a-j0-9]//g;
    $_ =~ s/^$/NONE/g;
    $_ =~ s/([a-j])/${\chr(ord($1)-49)}/g;
    print "$_\n";
}

close FH;
