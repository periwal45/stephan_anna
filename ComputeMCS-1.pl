#Program to compute MCS of drugs
#!/usr/bin/perl
use strict;
use warnings;
use Statistics::R;

open(F1, "2109_DrugPairsPart1.csv") || die $!;
my @file = <F1>;

	for(my $i=1; $i<scalar(@file); $i++){
	
		my $line = $file[$i];
		chomp $line;
		my @pairs = split ',', $line;
		
		my $drug1 = $pairs[0];
		my $drug2 = $pairs[1];
		
		
		my $out = `Rscript MCS1.R /media/hdd/Updated_Drug_List/DrugvsDrug/2114_SplitDrugs/$drug1.sdf /media/hdd/Updated_Drug_List/DrugvsDrug/2114_SplitDrugs/$drug2.sdf`;	#pass command line arguments to R script args[1] and args [2]
	
		print "$line\n$out\n";
	
		}
		



		
		 
