#!/bin/bash
# Generate Cordova splash screens

function usage() {
	echo "usage: $0 <image-filename> <background-color> [output-directory]";
	exit 1;
}

[ "$1" ] && [ "$2" ] || usage
[ "$3" ] || set "$1" "$2" "."

image=$1
bgcolor=$2
output=$3/res/screen
devices="android ios winphone"

# Show the user some progress by outputing all commands being run.
set -x
for device in $devices; do
  mkdir -p $output/$device
done

convert="convert $1 -background $bgcolor -gravity center"

$convert -resize 512x512 -extent 1280x720 "$output/android/screen-xhdpi-landscape.png"
$convert -resize 256x256 -extent 480x800 "$output/android/screen-hdpi-portrait.png"
$convert -resize 128x128 -extent 320x200 "$output/android/screen-ldpi-landscape.png"
$convert -resize 512x512 -extent 720x1280 "$output/android/screen-xhdpi-portrait.png"
$convert -resize 256x256 -extent 320x480 "$output/android/screen-mdpi-portrait.png"
$convert -resize 256x256 -extent 480x320 "$output/android/screen-mdpi-landscape.png"
$convert -resize 128x128 -extent 200x320 "$output/android/screen-ldpi-portrait.png"
$convert -resize 256x256 -extent 800x480 "$output/android/screen-hdpi-landscape.png"

$convert -resize 256x256 -extent 320x480 "$output/ios/screen-iphone-portrait.png"
$convert -resize 256x256 -extent 640x960 "$output/ios/screen-iphone-portrait-2x.png"
$convert -resize 256x256 -extent 480x320 "$output/ios/screen-iphone-landscape.png"
$convert -resize 256x256 -extent 960x640 "$output/ios/screen-iphone-landscape-2x.png"
$convert -resize 256x256 -extent 640x1136 "$output/ios/screen-iphone-568h-2x.png"
$convert -resize 256x256 -extent 750x1134 "$output/ios/screen-iphone-667h-2x.png"
$convert -resize 256x256 -extent 1242x2208 "$output/ios/screen-iphone-portrait-736h-3x.png"
$convert -resize 256x256 -extent 2208x1242 "$output/ios/screen-iphone-landscape-736h-3x.png"

$convert -resize 512x512 -extent 768x1024 "$output/ios/screen-ipad-portrait.png"
$convert -resize 1024x1024 -extent 1536x2048 "$output/ios/screen-ipad-portrait-2x.png"
$convert -resize 512x512 -extent 1024x768 "$output/ios/screen-ipad-landscape.png"
$convert -resize 1024x1024 -extent 2048x1536 "$output/ios/screen-ipad-landscape-2x.png"

$convert -resize 256x256 -extent 480x800 "$output/winphone/screen-portrait.jpg"
