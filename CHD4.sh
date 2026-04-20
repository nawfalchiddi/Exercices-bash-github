read -p "enter your age:" age
if [ $age -ge 18 ]
then
	echo "you are indeed an adult"
else
	echo "you are a minor"
fi
