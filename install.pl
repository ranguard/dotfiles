#!/usr/bin/perl

use strict;
use warnings;

use JSON;
use Path::Class;
use File::Copy;

my $d = decode_json( file('osx.json')->slurp);

while( my ($from, $to) = each %{$d}) {
	warn "F: $from T: $to";
	copy($from, $to);
}
