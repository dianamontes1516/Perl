#/usr/bin/perl
# @author Diana Montes
# 
# Script que obtienen de un archivo (datos.txt)con el fomrato de 
# /etc/passwd la información y crea una vista html.
# Toma de 03dmontespass.tmpl la plantilla para el html.
use strict;
use warnings;

use HTML::Template;
open FILE,">passwd.html" or die "Error";
print FILE &showForm();
close FILE;

sub showForm{
    my $output;
    my $template = HTML::Template->new(filename => './passwd.tmpl');
    my @loop_data=();
    my $filename="datos.txt";

    open PASS,"<", $filename;
    my @file=(<PASS>);
    for (@file){
	my %hash;
	if(m{(.*):(.*):(.*):(.*):(.*):(.*):(.*)}){
		$hash{"v_user"}=$1;
		$hash{"v_pass"}=$2;
		$hash{"v_uid"}=$3;
		$hash{"v_gid"}=$4;
		$hash{"v_desc"}=$5;
		$hash{"v_home"}=$6;
		@hash{"v_shell"}= $7;
	}
	push(@loop_data, \%hash);
    }
    $template->param(passwd => \@loop_data);
    $output.=$template->output();
    return $output;
    close PASS;
}
close FILE;

