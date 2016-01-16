#!/usr/bin/perl -w

# CHALLENGE DESCRIPTION:
#
# In  this  challenge  you're  presented  with  a situation in which you need to
# output  big symbols on devices which only support ASCII characters and single,
# fixed-width  fonts.  To  do this you're going to use pseudo-graphics to ‘draw’
# these big symbols.
#
# Here is an example of the font with digits from 0 to 9:
#
# -**----*--***--***---*---****--**--****--**---**--
# *--*--**-----*----*-*--*-*----*-------*-*--*-*--*-
# *--*---*---**---**--****-***--***----*---**---***-
# *--*---*--*-------*----*----*-*--*--*---*--*----*-
# -**---***-****-***-----*-***---**---*----**---**--
# --------------------------------------------------
#
# Each  pixel  is  marked  either with asterisk ‘*’ or with minus ‘-’. Size of a
# digit is 5×6 pixels.
#
# Your  task  is to write a program, which outputs the numbers given to you with
# the font as in the example.

use strict;

my %d =
(
    0=>["-**--","*--*-","*--*-","*--*-","-**--","-----"],
    1=>["--*--","-**--","--*--","--*--","-***-","-----"],
    2=>["***--","---*-","-**--","*----","****-","-----"],
    3=>["***--","---*-","-**--","---*-","***--","-----"],
    4=>["-*---","*--*-","****-","---*-","---*-","-----"],
    5=>["****-","*----","***--","---*-","***--","-----"],
    6=>["-**--","*----","***--","*--*-","-**--","-----"],
    7=>["****-","---*-","--*--","-*---","-*---","-----"],
    8=>["-**--","*--*-","-**--","*--*-","-**--","-----"],
    9=>["-**--","*--*-","-***-","---*-","-**--","-----"]
);

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
    chomp; $_ =~ s/[^0-9]//g; my @a = split "", $_;
    for my $i(0..5) { foreach (@a) { print ${$d{$_}}[$i]; } print "\n"; }
}

close FH;
