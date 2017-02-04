#!/usr/bin/perl 
use warnings;
use strict;

my $var = "www-data:x:33:33:www-data:/var/www:/bin/sh";
my @campos=();
@campos = split(":",$var);
# for(@campos){
#     print($_,"\n");
# }
print join("\n", @campos);

print("usuario: ",$campos[0],"\n");
print("home: ",$campos[5],"\n");

my ($usuario,$shell) = (split(/:/,$var))[0,6];
print("usuario:",$usuario,"\n");
print("shell:",$shell,"\n");
