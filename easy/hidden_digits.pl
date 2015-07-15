#!/usr/bin/perl -w
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

