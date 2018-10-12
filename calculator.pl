#!/usr/bin/perl
use strict;
use warnings;

my $input = "";
my $result = "";

do{
print "Type in 2 number and an operator\n";

print "First number: ";
my $first = <STDIN>;
chomp($first);

print "Second number: ";
my $second = <STDIN>;
chomp($second);

my $operator = '';

print "Operator: ";
$operator = <STDIN>;
chomp ($operator);

if ($second == 0 && $operator eq '/'){
	print "Can not divide by 0!";
	$result = 'ERROR';
}
else{
	my $answer = eval "$first $operator $second";
	$result = "" . $answer
}
print "\nAnswer: $result\n";
print "Type quit to exit, or hit enter to continue.\n";
$input = <STDIN>;
chomp($input);
} until ($input eq 'quit');
