search_term=$1

if [ ! -f DB.txt ]; then
    echo "DB.txt 파일이 존재하지 않습니다."
    exit 1
fi

result=$(grep -i "$search_term" DB.txt)

if [ -z "$result" ]; then
    echo "해당하는 전화번호가 없습니다."
else
    echo "$result"
fi

exit 0
