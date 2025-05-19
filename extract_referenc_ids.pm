#!/usr/bin/perl -w

use strict;
use warnings;

my $text = "";
while(<>) {
  chomp;
  $text .= $_;
}

my @matches = $text =~ /[\(\[]PMID:\s?([\d,\s]+?)[\)\]]/g;
my @all_references = split /, ?/, join ", ", @matches;
my %unique_references;

for(@all_references) { $unique_references{$_} = $_; }
for(keys %unique_references) {
  print "$_\n";
}
