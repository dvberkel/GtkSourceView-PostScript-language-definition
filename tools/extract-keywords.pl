#! /usr/bin/env perl

use strict;
use warnings;

# This script filters the keywords selected with the select-keywords.sh script.
# It should be used in the following command pipeline.
# less keywords.pdf | extract-keywords.pl | sort -u


while (my $line = <>) {
	next if $line !~ m/[a-z][a-z]+/;
	print $line;
}
