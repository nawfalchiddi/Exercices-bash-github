while true
do
	echo "------"
	echo "1.add students"
	echo "2.count students"
	echo "3.show students"
	echo "4.delete students"
	echo "5.search students"
	echo "6.exit"
	echo "------"
	read choice
	if [ $choice = 1 ];
	then
		read -p "enter the name: " name
		read -p "enter the age: " age
		if grep -iq "^$name$" "$CHD10F.txt"; then
            echo "Erreur : the '$name' existe already."
        else
            echo "$name - $age" >> CHD10F.txt
            echo "the students has been seccessfully added."
        fi
elif [ "$choice" == "2" ]; then
		count=$(wc -l < "$CHD10F.txt")
	echo "Total students in file: $count"
elif [ $choice = 3 ];
then
	cat CHD10F.txt
elif [ $choice = 4 ];
then
	read -p "enter the name to delete: " name
	if grep -q -i $name CHD10F.txt
	then
		sed -i /$name/d CHD10F.txt
		echo "the students has been deleted successfully"
	else
		echo "students not found"
	fi
elif [ $choice = 5 ]
then
	read -p "enter the searchname: " searchname
	if grep -q -i $searchname CHD10F.txt
	then
		grep -i $searchname CHD10F.txt
	else
		 echo "not found"
    fi

elif [ $choice = 6 ]
then
    echo "exiting..."
    break
else
    echo "invalide number"
fi
done
