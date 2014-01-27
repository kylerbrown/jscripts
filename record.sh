#!/bin/bash
bird="bk196"
day=`date +%Y_%m_%d`
echo "nucleus:"
read nuc
echo "electrode:"
read elec
echo "Penetration:"
read pen

echo "Site:"
read site

filename=$bird-$day-$nuc-$elec-$pen-$site.arf
echo $filename

~/jill/modules/jrecord -C ~/jrecord_32_2stim.ini -t jdetect:trig_out -f $filename