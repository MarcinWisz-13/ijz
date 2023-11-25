#!/usr/bin/perl

use strict;
use warnings;
use CGI;


my $cgi = CGI->new;


print $cgi->header;


if ($cgi->param) {
    my $imie = $cgi->param('imie');
    my $nazwisko = $cgi->param('nazwisko');
    my $plec = $cgi->param('plec');
    my $rok_urodzenia = $cgi->param('rok_urodzenia');


    my $filename = 'dane.txt';
    open(my $fh, '>>', $filename) or die "Nie mozna otworzyc pliku '$filename' $!";
    print $fh "$imie:$nazwisko:$plec:$rok_urodzenia\n";
    close $fh;

    
    print $cgi->start_html('Formularz CGI');
    print $cgi->h1('Dane zostaly zapisane do pliku.');
    print $cgi->end_html;
} else {
  
    print $cgi->start_html('Formularz CGI');
    print $cgi->h1('Wprowadz dane:');
    print $cgi->start_form(-method=>'POST');
    print "Imie: ", $cgi->textfield('imie'), "<br>";
    print "Nazwisko: ", $cgi->textfield('nazwisko'), "<br>";
    print "Plec: ", $cgi->radio_group(-name=>'plec', -values=>['M', 'K']), "<br>";
    print "Rok urodzenia: ", $cgi->textfield('rok_urodzenia'), "<br>";
    print $cgi->submit('submit', 'Wyslij');
    print $cgi->end_form;
    print $cgi->end_html;
}
