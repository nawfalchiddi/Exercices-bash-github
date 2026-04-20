while true
do
	echo "------"
	echo "1.Hello"
	echo "2.Show"
	echo "3.Exit"
	echo "------"
	read choice
	if [ $choice = 1 ]
	then
		echo "Hello"
	elif [ $choice = 2 ]
	then
		echo "20/04/2026"
	elif [ $choice = 3 ]
	then
		echo "exiting..."
		break
	else
		"invalide choice"
	fi
done
