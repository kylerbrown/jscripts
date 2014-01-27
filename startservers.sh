#!/bin/bash

JACK_DRIVER_DIR=/home/dmeliza/src/jack_rhd/driver jackd -d rhd2000 -A 0xffffffff,1,15000,1,0 &
sleep 2

jackd -n stim -d alsa -d hw:1 -r 44100 -p 2048&
sleep 2
~/jill/modules/jdetect -i rhd2000:EV_7
