 find tom/tom1087* | while read l; do convert $l  -rotate 90 -resize 448   -monochrome  out2.png ;  perl test.pl >out ; cat out >  /dev/ttyUSB0 ; sleep 1;done
 