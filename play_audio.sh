#!/bin/bash

# Check if the URL is provided
if [ "$#" -ne 1 ]; then
    echo "GIVE THE URL"
    exit 1
fi

# Get URL
URL=$1

# Retrieve the audio URL using yt-dlp
AUDIO_URL=$(yt-dlp -f 'bestaudio' -g "$URL")

# Check if AUDIO_URL was retrieved successfully
if [ -z "$AUDIO_URL" ]; then
    echo "Failed to retrieve audio URL."
    exit 1
fi

# Play the audio using mpv
mpv "$AUDIO_URL"
