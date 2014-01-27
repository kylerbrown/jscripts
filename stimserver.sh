#!/bin/bash
jackd -n stim -d alsa -d hw:1 -r 44100 -p 2048 -r 32000 &
sleep 2
jack_connect -s stim alsa_pcm:capture_1 alsa_pcm:playback_4
