read -p "enter a number: " number
count=1
while [ $count -le $number ]
do
	echo "$count"
	((count++))
done
