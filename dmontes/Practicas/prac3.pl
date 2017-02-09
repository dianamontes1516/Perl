#!/usr/bin/perl
# @author Dmontes
use warnings;
use strict;

my $var1;
my $var2;
my $var3;
my @r;

my %HoF = (                          
    salir   =>  sub { print join "\n",@r ; exit },  # Subrutinas impl+icitas, como lambdas function anonima
    mod   =>  sub {     print "Resultado: " , $_[0]%$_[1], "\n"; 
			push @r,$_[0]%$_[1] 
    },  
    help   =>  \&help,
    suma    =>  \&suma,
    resta   =>  \&resta,
    multi   =>  \&multiplicacion,
    divi    =>  \&division,
);


sub main{
    while(1){
	print "Introduce la operación que quieres realizar:\n";
	chomp ($var1=<STDIN>);
	if (lc $var1 =~ /salir/) {
	    $HoF{lc $var1}->();	    
	}
	if (lc $var1 =~ /help/){
	    $HoF{lc $var1}->();	 
	    next;
	}
	if($HoF{lc $var1} ){# lc pasa todo a minisculas. Pregunta si existe la key lc $cmd en el hash
	    print "Introduce los operandos\n";
	    chomp ($var2=<STDIN>);
	    chomp ($var3=<STDIN>);
	    $HoF{lc $var1}->($var2,$var3);
	}else {
	    warn "Unknown command: `$var1'; Try `help' next time\n";
	     #warn termina el programa con 0 (Y);
	}
    }
}

sub suma{
    print "Resultado:" , $_[0]+$_[1], "\n";
    push @r,$_[0]+$_[1];
}
sub resta{
    my $v1=$_[0]; 
    my $v2=$_[1];
    print "Resultado:" , $v1-$v2, "\n";
    push @r,$_[0]-$_[1];
}
sub multiplicacion{
    my $v1=$_[0]; 
    my $v2=$_[1];
    #@r=; 
    print "Resultado: " , $v1*$v2, "\n";
    push @r,$_[0]*$_[1];
}
sub division{
    my $v1=$_[0]; 
    my $v2=$_[1];
    if($v2==0){
	print "Error: div entre 0\n";
    }else{
	print "Resultado: " , $v1/$v2, "\n";
	push @r,$_[0]/$_[1];
    }
}
sub help{
    print "Operaciones permitidas: \n" ;
    print join  "\n", keys %HoF;
    print "\n";
}

&main();
# suma resta multiplicación división
# subrutina main
# Recibe tres parámetors

