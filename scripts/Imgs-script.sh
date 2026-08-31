#!/bin/bash
a=1
##############
for i in *.png; do ffmpeg -i "$i" "${i%.*}.jpg"; done
for i in *.webp; do ffmpeg -i "$i" "${i%.*}.jpg"; done
for i in *.jpeg; do ffmpeg -i "$i" "${i%.*}.jpg"; done
##############

for i in *.jpg; do
  new=$(printf "%04d.jpg" "$a") #04 pad to length of 4
  mv -i -- "$i" "$new"
  let a=a+1
done

for fichier in *.jpg; do mv "$fichier" "$(tr -dc A-Za-z0-9 </dev/urandom | head -c 5).jpg"; done

#############
rm -rf *.png
rm -rf *.jpeg
rm -rf *.webp
