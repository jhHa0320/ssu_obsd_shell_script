echo "리눅스가 재미있나요?(yes / no)"
read answer

case "$answer" in
	y|Y|yes|Yes|YES|yesyes|yesyesyes)
		echo "yes" ;;
	n|N|no|No|NO|nono|nonono)
		echo "no" ;;
	*)
		echo "yes or no로 입력해 주세요.";;
esac
exit 0
