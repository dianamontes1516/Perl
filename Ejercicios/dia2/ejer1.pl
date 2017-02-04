 #!/usr/bin/perl

use warnings;
use strict;

my @a = (1,2);
# Hashes :  Arreglos asociativos.
my %h=(
    "uno",1
    ,"dos", 2 
    ,"tres", 3
    ,"ene", "n"
    ,"llave","valor"
    ,"1","uno"
    ,"cero",0
     );
#print $a[1];
say $h{1};
say $h{"1"};
say $h{0};
say $h{"0"};

for my $key (sort keys %h){
    say $key, "->",$h{$key};
}
