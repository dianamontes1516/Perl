#!/usr/bin/perl

# Practica 1.
# Crear dos arreglos uno del uno al diez y el otro vacio y 
# si  los numeros son  múltiplo de dos que los guarde en el vacio                        
use warnings;
use strict;

my @a = (1..10);
my @b;

for (@a) {
    if ($_ % 2 == 0) {
        @b[$_/2-1]=$_;
    }
}
print @a, "\n";
print @b, "\n";
