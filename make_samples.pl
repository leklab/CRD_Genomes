#!/usr/bin/perl


@fastqs = <>;
chomp @fastqs;

foreach $f (@fastqs){


	$f =~ /.*\/(.*?)_R1\.fastq\.gz/;
	$sample = $1;

	$f2 = $f;
	$f2 =~ s/R1/R2/;

	print "$sample\tRG1\t$f\t$f2\n";

}
