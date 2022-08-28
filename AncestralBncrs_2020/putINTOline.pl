
use strict;

my ($line, $gi, $first, $outfile);

open (INFILE, $ARGV[0]) or die "Kozyol!\n";
$outfile = $ARGV[0];
($outfile)=($outfile =~ m/(.*)\.fas/);
$outfile = $outfile . ".line.fas";

open (OUTFILE, ">$outfile") or die "Kozyol!\n";


$first=" ";
while(<INFILE>)
{$line = $_;

  if ($first){print OUTFILE $line; $first="";}
else         { 
              chomp($line);chomp($line);chomp($line);
              if ($line =~ m/>/){print OUTFILE "\n$line\n";}
               else {print OUTFILE $line;}
             }
}

print "\n";
