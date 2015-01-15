#!/usr/bin/perl -w

use strict;
use LWP::Simple;
use LWP::UserAgent;

my $db = "pubmed";

my $query = '("HIV" OR "human immunodeficiency virus" OR "AIDS") AND ("mutation" OR "mutations" OR "mutants" OR "mutant" OR "mutagenesis" OR "mutagen") AND "The Journal of general virology"[Journal]';

#my $query = 'HIV';

my $base_url = "http://www.ncbi.nlm.nih.gov/entrez/eutils";
my $esearch = $base_url . "/esearch.fcgi?db=" . $db . "&term=" . $query . "&usehistory=y&retmax=200" ;

print "esearch : $esearch\n";

my $esearch_result = get($esearch);
print "ESEARCH RESULTS\n";
print "$esearch_result\n";

$esearch_result=~m|<Count>(\d+)</Count>.*<QueryKey>(\d+)</QueryKey>.*<WebEnv>(\S+)</WebEnv>|s;

        my $Count    = $1;
        my $QueryKey = $2;
        my $WebEnv   = $3;

print "Count : $Count, QueryKey : $QueryKey, WebEnv : $WebEnv\n";

#Count : 163, QueryKey : 1, WebEnv : NCID_1_313583128_130.14.22.215_9001_1420815114_927565301_0MetA0_S_MegaStore_F_1


my $esummary = $base_url . "/esummary.fcgi?db=" . $db . "&query_key=" . $QueryKey . "&WebEnv=$WebEnv";

my $esummary_results = get($esummary); 
print "esummary_results : $esummary_results\n";
