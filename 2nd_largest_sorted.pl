#! /usr/local/bin/perl

use strict;
use warnings;
use Data::Dumper;

print "### Start ###\n";

my @list;
my $list_size = 10000000;

for(my $i = 1 ; $i <= $list_size; $i++){
	push @list, $i;
}

@list = sort { $b <=> $a } @list;

print "Max    : $list[0]\n";
print "2nd Max: $list[1]\n";

print "### End ###\n";