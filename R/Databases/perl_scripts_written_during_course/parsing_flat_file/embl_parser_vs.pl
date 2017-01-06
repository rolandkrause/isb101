#!/usr/bin/perl -w 

use strict;

my $file_name = "./EMBL_raw.txt";
my $output_file_name = "./parsed_data.txt";
close(OUTPUT_FH);
open(OUTPUT_FH,">$output_file_name");
print OUTPUT_FH "ACCESSION\tORGANISM\tDESCRIPTION\n";

print "file_name : $file_name\n";

$/='//\n'; # record separator 

open(FH,"$file_name") || die "can't open the file : $file_name!!!";

my @records = <FH>;

my $i=0;

while(@records) {
	my $record = shift @records;
	chomp($record);
	$i++;
	if ($record=~/ID/) {
print "-----------record $i start : record\n";

	### process each record
	my @all_lines = split("\n", $record);

	my $accession = "";
	my $description = "";
	my $organism = "";

	foreach my $line (@all_lines) {
		chomp($line);
#		print "line : $line\n";

		if($line=~/^AC\s+(.*);/) {
			$accession = $1;
		}
		elsif($line=~/^DE\s+(.*)/) {
			$description = $description . $1 . " ";
		}
		elsif($line=~/^OS\s+(.*)/) {
			$organism = $1;
		}
	} # foreach my $line (@all_lines) {

	print "accession : $accession\n";
	print "description : $description\n";
	print "organism : $organism\n";
#	$description =~s/\n//g;
	print OUTPUT_FH "$accession\t$organism\t$description\n";	
print "-----------record $i end\n";
	} # if ($record=~/ID/) {
} # while(@records) { 
close(FH);
close(OUTPUT_FH);
