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
