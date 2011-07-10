#! /usr/bin/env perl

use strict;
use warnings;

# This script can pad a a list of words with a prefix and a postfix.

die "usage: $0 prefix postfix [files...]\n" unless scalar(@ARGV) == 2;

my $prefix  = shift @ARGV;
my $postfix = shift @ARGV;


while (my $line = <>) {
	chomp $line;
	print "$prefix$line$postfix\n";
}
