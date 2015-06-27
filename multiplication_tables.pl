#!/usr/bin/perl -w
use strict;
for (1..12) { my $x=$_; for (1..12) { print sprintf("%4d", $x*$_); } print "\n"; }
