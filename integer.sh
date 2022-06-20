#!/bin/bash -x
sum=0

read -p "enter no of elements: " n
echo "enter elements"

array1=()
for (( i=0; i<$n; i++ ))
do
read -p "enter the elements: " z

array1[$i]=$z
echo ${array[i]}
done

for (( i=0; i<$n; i++))
do
	for(( j=$((i+1)); j<$n; j++))
	do
		for(( k=$((j+1)); k<$n; k++))
		do
			a=${array[i]}
			b=${array[j]}
			c=${array[k]}

                  sum=`echo $a+$b+$c |awk '{{s+=$0} END {printf("%.2f\n",s)}'`

                if [ $sum -eq 0 ]
		then
			echo"THE SUM OF "${array[i]}" "${array[j]}" "${array[k]}" is zero"
               else
			echo"no elements sum is zero"
		fi


		done
	done
done
