#!/usr/bin/perl 
use warnings;
use strict;

#map puede recibir una expresión un bloque.
my $n = <STDIN>;
map {
    print($_ * $n, "\n");
}(1..10);
