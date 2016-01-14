#!/usr/bin/perl -w

use strict;
use warnings;

my $text = "";
while(<>) {
  chomp;
  $text .= $_;
}

my @matches = $text =~ /\(([\d,\s]+?)\)/g;
print sort {$a cmp $b} join "\n", split /, /, join ", ", @matches;
