#!/bin/bash

for file in *.flac; do
	ffmpeg -i $file -ab 320k -map_metadata 0 -id3v2_version 3 mp3/$(echo $file | sed 's/\.flac/\.mp3/g') &
done

