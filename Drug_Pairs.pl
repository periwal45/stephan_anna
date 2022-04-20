#Program to create drug pairs
#!/usr/bin/perl
use strict;
use warnings;
use Statistics::R;

open(F1, "1415_Drugs_with_targets") || die $!;
my @file = <F1>;

	for(my $i=0; $i<scalar(@file); $i++){
	
		my $line = $file[$i];
		chomp $line;
				
	for(my $j=$i+1; $j<scalar(@file); $j++){	
		
		my $line2 = $file[$j];
		chomp $line2;
		
		print "$line\t$line2\n";
	

	}
	
}

		



		
		 
