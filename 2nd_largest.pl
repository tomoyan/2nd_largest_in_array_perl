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

my $max     = 0;
my $max_2nd = 0;

my $counter = 1;
foreach (@list){
	if($counter == 1){
		$max = $_;
		$counter++;
	}
	elsif($_ > $max_2nd){
		if($_ > $max){
			my $temp;
				$temp    = $max;
				$max     = $_;
				$max_2nd = $temp;
		}
	}
}

print "Max    : $max\n";
print "2nd Max: $max_2nd\n";

print "### End ###\n";