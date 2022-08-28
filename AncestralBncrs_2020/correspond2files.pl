
use strict;

my ($line, $id, $first, $outfile, %genes, %done);

open (INFILE, $ARGV[0]) or die "Kozyol!\n";
$outfile = $ARGV[0];
($outfile)=($outfile =~ m/(.*)\.fas/);
$outfile = $outfile . ".id.fas";

open (OUTFILE, ">$outfile") or die "Kozyol!\n";


while(<INFILE>)
{$line=$_;

#($id)=($line =~ m/(\S+)\t/);
#$line =~ s/\t/_/g;
#chomp($line);

$genes{$line}=<INFILE>;
}

open (INFILE, $ARGV[1]) or die "Kozyol!\n";

while(<INFILE>)
{$line = $_;


#($id)=($line =~m/>(\S+)\.\d/);

#if($done{$id}){print "AAAAA!!!!$id\n$line\n"; <INFILE>;}
#else{$done{$id}++;
if ($genes{$line}){print OUTFILE "$line$genes{$line}";}
else{print $line;}

}

