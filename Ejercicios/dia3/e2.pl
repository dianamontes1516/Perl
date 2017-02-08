#!/usr/bin/perl
# @author Dmontes
# Poner la estructura del archivo passwd un hash
use warnings;
use strict;

my %hash2;
my $filename="copia";

 
open FILE,"<",$filename;
my @file=(<FILE>);
for (@file) {
    my %hash;
    if(/(.*):(.*):(.*):(.*):(.*):(.*):(.*)/){
	 $hash{"user"}=$1;
	 $hash{"pass"}=$2;
	 $hash{"uid"}=$3;
	 $hash{"guid"}=$4;
	 $hash{"desc"}=$5;
	 $hash{"home"}=$6;
	 $hash{"shell"}=$7;
	 
	 my $temp=$hash{"user"};
	 $hash2{$temp}=\%hash;
    }
 
}
for my $var (keys %hash2) {
    print "\nLlave: ", $var,"valores: \n" ;
    for (keys %{hash2{$var}}) {
	print $_ ,": " ,$hash2{$var}{$_},"\n"
    }
}


#print @file;
close FILE;
