#!/usr/bin/perl -w

use strict;

use LWP::Simple;
use XML::LibXML;

#my $pubmed_id = "25571289"; 
my $pubmed_id = $ARGV[0];

my $ncbi_url = "http://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=pubmed&retmode=xml&id=$pubmed_id";

my $record = LWP::Simple::get($ncbi_url);
#print "record : $record\n";

my $parser = XML::LibXML->new();

my $doc = $parser->parse_string($record);
my $root = $doc->getDocumentElement;

print "balalalalal\n";
print "parser : $parser\n";
print "doc : $doc\n";
print "root : $root\n";

my $title = $root->getElementsByTagName('ArticleTitle');
print "title : $title\n";
my $abstract = $root->getElementsByTagName('AbstractText');
$abstract =~ s/'/\\'/g;
$abstract =~ s/"/\\"/g;
$abstract =~ s/\s+/ /g;

print "abstract : $abstract\n";


