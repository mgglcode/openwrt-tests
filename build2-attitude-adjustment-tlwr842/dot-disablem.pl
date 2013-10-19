#!/usr/bin/perl -w 

use warnings;
use strict;

while(<>) {

  chomp;
  if ( $_ =~ /^CONFIG_PACKAGE_(.+?)=m$/ ) {
      print("CONFIG_PACKAGE_$1=n\n");
  } else {
      print("$_\n");
  }
}

