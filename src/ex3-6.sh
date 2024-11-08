#!/bin/bash

file_name=$1
folder_name="${file_name}s"

if [ ! -d "$folder_name" ]; then
	mkdir "$folder_name"
fi

cd $folder_name

for i in `seq 0 4`
do
	echo -n "$file_name$i.txt "
done

echo "$folder_name.tar"

for j in `seq 0 4`
do
	touch "$file_name$j.txt"
done

tar -cvf "$folder_name.tar" *.txt

new_folder="$folder_name"
mkdir -p "$new_folder"
mv "$folder_name.tar" "$new_folder"

cd "$new_folder"

tar -xf "$folder_name.tar"

exit 0

