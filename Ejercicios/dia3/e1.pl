#!/usr/bin/perl
# @author Dmontes
use warnings;
use strict;

my $var1;
my $var2;

chomp ($var1=<STDIN>);
chomp ($var2=<STDIN>);

# ¿Qué pedo, por que no tiene sintaxis para ver los parámetros?!
sub suma(){
    #@_; # Es un arreglo
    #### @_[0] # Esto no se hace aun @_ sea arreglo
    my $v1=$_[0]; 
    my $v2=$_[1];
# Las instrucciones de arriba y de abajo son equivalentes.
    my $va1=shift; # shift: Arreglos -> Escalar (pop a un arreglo)
    my $va2=shift;

    print $v1+$v2;
    print $va1+$va2;
}

# Traiganme a esa funcion
#&suma($var1,$var2);

my @arr2 = (1..12);
my @arr1 = ('a'..'f');

#otro procedimiento
sub arreglo{
    #$_ Variable especial. Es como el argv. 
    #Arreglo de escalares (referencias a memoria)
    my @letras=@{$_[0]}; # Estoy sacando la refernecia en $_[0] y la interpreto
    # como un arreglo
    my @numeros=@{$_[1]};
    print @letras;
    print @numeros;
	
}

# invoco la funcion
# Le mando a la función las referencias de los arreglos
&arreglo(\@arr1,\@arr2);
