#!/usr/bin/perl -w

# CHALLENGE DESCRIPTION:
#
# You are given an array of integers. Count the numbers of ways in which the sum
# of 4 elements in this array results in zero.

use strict;

sub combine;

sub combine
{
    my ($list, $n) = @_;
    die "Insufficient list members" if $n > @$list;

    return map [$_], @$list if $n <= 1;

    my @c;

    for (my $i = 0; $i+$n <= @$list; ++$i)
    {
        my $val  = $list->[$i];
        my @rest = @$list[$i+1..$#$list];
        push @c, [$val, @$_] for combine \@rest, $n-1;
    }

    return @c;
} # thx StackOverflow

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
    chomp;
    next if length($_) <= 0;
    my $n = [split ",", $_]; my $cnt = 0;

    foreach (combine $n, 4) { $cnt++ if (eval join '+', @{$_}) == 0; }

    print "$cnt\n";
}

close FH;
