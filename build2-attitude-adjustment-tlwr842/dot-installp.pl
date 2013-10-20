#!/usr/bin/perl -w 

use warnings;
use strict;

while(<>) {

  chomp;
  if ( $_ =~ /^CONFIG_PACKAGE_(.+?)=y$/ ) {
      my $feed = $1;
      print("./scripts/feeds install $feed\n");
      my $rc = system("./scripts/feeds install $feed");
      if ( $rc ) {
          print STDERR "Error: rc $rc. install $feed\n";
          die "Error: rc $rc. install $feed\n";
      }
  } elsif ( $_ =~ /^CONFIG_PACKAGE_(.+?)=m$/ ) {
      my $feed = $1;
          print STDERR "Error: =m for package $feed\n";
          die "Error: =m for package $feed\n";
  }
}

