#!/usr/bin/perl

use strict;

# 1. Transform string with BWT in function
# 2. Inverse BWT
# 3. Searching

sub bwt($genome){
  my ($genome) = @_;

   $genome .= "!";
  # rotate all words of genome
  my @words = ();
  my $n = length($genome );
  foreach my $i (0..$n-1){
    my $rotated_word = substr($genome, $i, $n) . substr($genome, 0, $i);
    push(@words, $rotated_word);
  }
  # sort words
  # take last column

  my $bwt = '';
  foreach my $word (sort @words){
    $bwt .= substr($word, $n-1, $n);
  }


  return $bwt;
}

my $string = "gattaca";
my $d = &bwt($string);
print $d;
