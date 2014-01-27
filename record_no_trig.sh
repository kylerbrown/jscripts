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

filename=$bird-$day-$nuc-$elec-$pen-$site-spon.arf
echo $filename

~/jill/modules/jrecord -C ~/jrecord_32_nostim.ini -f $filename