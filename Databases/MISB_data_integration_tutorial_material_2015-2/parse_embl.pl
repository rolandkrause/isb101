#!/usr/bin/perl -w
use strict;

my $in_file="./EMBL_raw.txt";
my $out_file = "./EMBL_parsed.txt";
close(RFH); # result file handle
open(RFH, ">$out_file");
print RFH "ACCESSION\tORGANISM\tDESCRIPTION\n";

$/ = '//'; # input record separator
close(FH); # close the file handle 
open(FH, $in_file) || die "can't open file : $in_file !!!"; # open the file handle and read the file or die if the file can't be open

while (<FH>) {
	my $record = $_;
#print "---------------\n";
#print "record : \n";
#print "$record\n";
	if ($record =~ /ID/) {
		my $acc = "";
		my $des = "";
		my $org = "";

		my @record_lines = split("\n", $record);
		while(@record_lines) {
			my $line = shift @record_lines;
			chomp($line);
			if ($line =~ /^AC\s+(.*);/) {
#print "AC : $line\n";
				$acc = $1;
			}
			elsif ($line =~ /^DE\s+/) {
				do {
					$line=~s/^DE\s+//;
					$des .= $line . " ";	
				} while ($line =~ /^DE\s+/);
			}
			elsif ($line =~ /^OS\s+(.*)/) {
				$org = $1;
			}
		} # while(@record_lines) {
print RFH "$acc\t$org\t$des\n";
	} # if ($record =~ /ID/) {
} # while (<FH>) {	
