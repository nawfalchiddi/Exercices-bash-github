while true
do
	read -p "enter password: " password
	secretpass=hihello
	if [ $password = $secretpass ]
	then
		echo "correct"
		break
	else
		echo "please try again"
	fi
done
