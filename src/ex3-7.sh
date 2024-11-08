#!/bin/bash

folder_name=$1

if [ -d "$folder_name" ]; then
    echo "$folder_name 폴더는 존재하므로 폴더 생성하지 않습니다."
else
    mkdir $folder_name
fi

cd $folder_name
for i in `seq 0 4`
do
    touch "$folder_name$i.txt"
    mkdir "$folder_name$i"
    ln -s "../$folder_name$i.txt" "$folder_name$i/$folder_name$i.txt"
done

exit 0
