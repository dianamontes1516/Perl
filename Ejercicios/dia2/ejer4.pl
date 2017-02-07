#!/usr/bin/perl
use warnings;
use strict;
use 5.014;

open(FCG,"<","copia") or die "No se puede\n";

while(<FCG>){
    chomp;
    if($_=/:.*:/){
	say $_;
	say $';
	say $&;
	say $;
	say '';
    }
}

# https://esfinge.seguridad.unam.mx/datos.txt
# constraseña -B3c4r10s-
# Tarea:
# - ips, correos electronicos, dominios
# contador de urls, (veces | url )
# Contador de dominios (veces | ulr)
# Contador de correos (veces | url)
# para escribir: 
# Abrir otro de un giga 
# imprimi print FH "archivo" (se "archivo" con el modo >) 
