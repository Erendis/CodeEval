#!/usr/bin/perl -w
use strict;

sub pr { my $n = shift; for(2..sqrt($n)) { if($n % $_ == 0) { return 0 }; } return 1; }

my $sum = 0;
my $cnt = 0;
my $i   = 2;

while ($cnt < 1000) { if(pr($i)) { $sum += $i; $cnt++; } $i++; }
print $sum;
