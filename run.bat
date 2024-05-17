@echo off
ffmpeg.exe -i input.webm -threads:v 4 -sws_flags bicubic -codec:v libvpx  -r:v 25  -b:v 1300k -bufsize 1300k -g 25 -rc_lookahead 16 -p:v 2 -qmax 51 -qmin 11 -slices 4 -an -vol 0 -b:v 1300k  -aspect 16:9 -b:v 1200k -filter:v scale=512:384 output.wii.webm
