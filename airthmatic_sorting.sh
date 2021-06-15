#!/bin/bash -x
echo "Welcome to Arithmetic sorting problem"

read -p "Enter the value for a: " a
read -p "Enter the value for b: " b
read -p "Enter the value for c: " c

echo "Entered values are a=$a, b=$b and c=$c"

compute_1=$(($a+$b*$c))
echo "a+b*c=$compute_1"

compute_2=$(($a*$b+$c))
echo "a*b+c=$compute_2"

compute_3=`awk 'BEGIN{printf("%0.2f" , '$c'+'$a'/'$b')}'`
echo "c+a/b=$compute_3"

compute_4=`awk 'BEGIN{printf("%0.2f" , '$a'%'$b'+'$c')}'`
echo "a%b+c=$compute_4"

declare -A dict
declare -a arr

dict[compute_1]=$compute_1
dict[compute_2]=$compute_2
dict[compute_3]=$compute_3
dict[compute_4]=$compute_4

i=0
for key in ${!dict[@]}
do
	 arr[i++]=${dict[$key]}
done
echo "The computed values are"
echo ${arr[@]}

descending_order=$(printf '%s\n' ${arr[@]} | sort -nr)
echo "Computational results in descending oreder:"
echo $descending_order
