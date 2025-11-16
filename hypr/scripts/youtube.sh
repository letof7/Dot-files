#!/bin/bash

# Function to display usage information
usage() {
    echo "Usage: $0 [audio|video|stream] <YouTube URL>"
    echo "Options:"
    echo "  audio   - Download the best audio format"
    echo "  video   - Download the best video format"
    echo "  stream  - Stream the video online"
    exit 1
}

# Check if yt-dlp is installed
if ! command -v yt-dlp &> /dev/null; then
    echo "Error: yt-dlp is not installed. Please install it first."
    exit 1
fi

# Ensure at least two arguments are provided
if [ "$#" -ne 2 ]; then
    usage
fi

# Extract arguments
option=$1
url=$2

# Set download path
download_path="/home/tof/Downloads/yt-downloads"
mkdir -p "$download_path"

# Perform the requested action
case "$option" in
    audio)
        echo "Downloading best audio from $url..."
        yt-dlp -f bestaudio -x --audio-format mp3 -o "$download_path/%(title)s.%(ext)s" "$url"
        ;;
    video)
        echo "Downloading best video from $url..."
        yt-dlp -f bestvideo+bestaudio --merge-output-format mp4 -o "$download_path/%(title)s.%(ext)s" "$url"
        ;;
    stream)
        echo "Streaming $url..."
        mpv "$url"
        ;;
    *)
        echo "Invalid option: $option"
        usage
        ;;
esac
