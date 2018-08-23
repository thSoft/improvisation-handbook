source=MuseScore
target=Képek
rm -rf $target
find $source -name '*.mscz' -print0 | while read -d $'\0' file
do
  image="${file%.*}.svg"
  out=${image//$source/$target}
  mkdir -p "$(dirname "$out")"
  /Applications/MuseScore\ 2.app/Contents/MacOS/mscore -o "$out" --trim-image 0 "$file"
done

./build.sh
