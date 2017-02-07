#Tarea 1
use warnings;
use strict;

# pod
=pod
 
=head1 Tarea 1

=head2 POD

Este script ejemplifica el uso pod (Plain Old Documentation). 
Para poder visualizar la documentacion generada en un formato lindo basta instalar el paquete perl-doc necesario para la herramienta perdoc:

$ apt-get install perl-doc 

Y despues ejecutar perldoc

$ perldoc <nombre_archivo.pl>

La ventaja de pod es que puede embeber la documentacion en tu codigo de una manera simple, usando el lengujae de marcado y la herramienta que intepreta la documentacion lo desplegara de manera coqueta.

=head2 Pragmas

La sengunda parte de la tarea es escribir que son los pragmas de Perl. Para lo cual basta ejecutar el script.

perl 01Dmontes.pl 

=cut

# Pracmas
print "Un pragama es una pista para el compilador. Es decir, como programadores le podemos decir que tenga un comportamiento determinado, y esto lo hacemos agregandole modulos, (pragmatic modules - pragmatas o pragmas). Estos módulos afectan la parte de la compilación o , incluso, la parte de ejecución. Dado que su objetivo es modificar el comportamiento del compilador deben estar presentes en tiempo de compilación. \n El efecto de los prágmas también tiene alcancé y afecta a todos los bloques internos a la delcaración del pragma. El enunciado no usado en bloques internos previene el efecto de los pragmas declarados en bloques exteriores.\n" 
