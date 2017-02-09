#/usr/bin/perl
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
		$hash{"user"}=$1;
		$hash{"pass"}=$2;
		$hash{"uid"}=$3;
		$hash{"gid"}=$4;
		$hash{"desc"}=$5;
		$hash{"home"}=$6;
		@hash{"shell"}= $7;
	}
	push(@loop_data, \%hash);
    }
    $template->param(passwd => \@loop_data);
    $output.=$template->output();
    print $output;
    return $output;
    close PASS;
}
close FILE;

