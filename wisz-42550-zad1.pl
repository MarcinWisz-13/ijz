#!/usr/bin/perl

use strict;
use warnings;
use CGI;


my $cgi = CGI->new;

my $param1 = $cgi->param('parametr1') || '';
my $param2 = $cgi->param('parametr2') || '';
my $param3 = $cgi->param('parametr3') || '';


my $input_param1 = $cgi->param('input_param1') || '';
my $input_param2 = $cgi->param('input_param2') || '';
my $input_param3 = $cgi->param('input_param3') || '';


print "Content-type: text/html\n\n";


print "<!DOCTYPE html>";
print "<html>";
print "<head>";
print "<title>Formularz CGI</title>";
print "</head>";
print "<body>";


print "<h2>Formularz:</h2>";
print "<form method='post'>";
print "<p><b>Parametr 1</b>: $param1<br>";
print "<input type='text' name='input_param1' value='$input_param1'></p>";
print "<p><b>Parametr 2</b>: $param2<br>";
print "<input type='text' name='input_param2' value='$input_param2'></p>";
print "<p><b>Parametr 3</b>: $param3<br>";
print "<input type='text' name='input_param3' value='$input_param3'></p>";
print "<input type='submit' value='Wyslij'>";
print "</form>";


print "<h2>Dane wpisane przez uzytkownika:</h2>";
print "<p><b>Parametr 1</b>: $input_param1</p>";
print "<p><b>Parametr 2</b>: $input_param2</p>";
print "<p><b>Parametr 3</b>: $input_param3</p>";

print "</body>";
print "</html>";

