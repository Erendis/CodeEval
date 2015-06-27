#!/usr/bin/perl -w
use strict;
sub pr { my $n = shift; for(2..sqrt($n)) { if($n % $_ == 0) { return 0 }; } return 1; }
sub pa { my $n = shift; if($n =~ m/^((.)(?1)\2|.?)$/) { return 1 }; }
for (reverse 1..1000) { if(pr($_) && pa($_)) { print; last; } }
