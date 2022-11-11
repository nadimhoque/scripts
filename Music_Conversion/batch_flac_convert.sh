#!/bin/bash

for dir in $(ls | grep -v rm); do
	mkdir $dir/mp3
	for file in $(ls $dir/*.flac); do
		#echo $file
		ffmpeg -i $file -ab 320k -map_metadata 0 -id3v2_version 3 $(pwd)/$dir/mp3/$(echo $file | sed 's/\// /g' | awk '{print $2}'| sed 's/\.flac/\.mp3/g') &
	done
done

