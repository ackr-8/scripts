#!/bin/bash

echo Converting all webm files in this folder to mp3 using ffmpeg 
for FILE in *.webm; do     
    echo -e "Processing file '$FILE'";
    ffmpeg -i "${FILE}" -vn -ab 128k -ar 44100 -y "${FILE%.webm}.mp3";
done;
