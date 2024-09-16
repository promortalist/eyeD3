shopt -s globstar nullglob
for mp3file in ./**/*.mp3; do
#for mp3file in *.mp3 ; do
#    mv $file'.mp3' $file
#     $file2=echo $file |sed "s/\.mp3//g"
#     file3=$(echo "$file" | sed 's/\.mp3//g')
#    echo "$file3"
#    mkdir "$file3"
#    mv "$file" "$file3"

title=$(eyeD3 "$mp3file" | grep 'title:' | sed 's/title\://g')
eyeD3 --encoding utf8 --title "$title" "$mp3file"
artist=$(eyeD3 "$mp3file" | grep 'artist:' | sed 's/artist\://g')
eyeD3 --encoding utf8 --artist "$artist" "$mp3file"
album=$(eyeD3 "$mp3file" | grep 'album:' | sed 's/album://g')
eyeD3 --encoding utf8 --album "$album" "$mp3file"
done
