use GD;

my $filename="out2.png";

my $image = GD::Image->newFromPng($filename);

my ($height, $width) = $image->getBounds;
my $y;
my $n;
my $nn;


foreach my $x ( 0 .. $width ) {
   print "\eG";
    for ( $y=0;$y < $height; $y+=8) {
           my $out=0;
           for ($nn=0,$n=7;$n>-1;$n--,$nn++) { 
            my ($index) = $image->getPixel($y+$n,$x);
            my ($r,$g,$b) = $image->rgb($index);
#            if ( $r < 25 && $r > 4) {
             if ( $r < 255) {
              $out |= 1 << $nn ;
            }
            
#
}
#            print "($x,$y) -> ($r,$g,$b,$out)\n";
print chr $out;

            }
    }
    
print "\n\n\n\n";
#print "\eC0";
#print "\e\\";
#print chr 0;
#print chr 80;
