~/jill/modules/jstim -s stim -g 10 -l *.wav -p system:playback_1 -o system:playback_2 -o system:playback_3
sleep 2
jack_connect -s stim alsa_pcm:capture_1 alsa_pcm:playback_4
