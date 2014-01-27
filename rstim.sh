#!/bin/bash
bird="bk196"
day=`date +%Y_%m_%d`
echo "nucleus:"
read nuc
echo "electrode:"
read elec
echo "pen"
read pen
echo "site"
read site

filename=jstim-$bird-$day-$nuc-$elec-$pen-$site.log

~/jill/modules/jstim -s stim -g 10 -l *.wav -p system:playback_1 -o system:playback_2 -o system:playback_3 > $filename

