#!/usr/bin/perl -w
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
}

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
    chomp;
    next if length($_) <= 0;
    my $n = [split ",", $_];
    my $cnt = 0;

    foreach (combine $n, 4)
    {
        $cnt++ if (eval join '+', @{$_}) == 0;
    }

    print "$cnt\n";
}

close FH;
