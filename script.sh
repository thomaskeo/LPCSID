for i in $(find . -type f )
	do

count=$(cat $i | wc -l)
#echo $count
	if [ $count -gt 10 ]
	then
		echo "$i;$count"
		mv $i $(echo $i | sed 's/f/g/g')
	fi
done
