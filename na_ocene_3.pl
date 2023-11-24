#!/usr/bin/perl

use strict;
use warnings;
use CGI;

my $q = CGI->new;

my $value = 0;

print $q->header();

foreach (@ARGV) {
    if ($_ > $value) {
        $value = $_;
    }
}

print "max_arg: ", $value;