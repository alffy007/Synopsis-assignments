@a=(1,2,3,2);
foreach $k (@a) { $h{$k}=""};
@a=keys %h; 
%ARGV=@ARGV;
$infile=$ARGV{"-i"}; $outfile=$ARGV{"-o"};
print "infile=$infile\n"; 
print "outfile=$outfile\n";