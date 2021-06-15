#!/bin/bash -x
echo "Welcome to Arithmetic sorting problem"

read -p "Enter the value for a: " a
read -p "Enter the value for b: " b
read -p "Enter the value for c: " c

echo "Entered values are a=$a, b=$b and c=$c"

compute_1=$(($a+$b*$c))
echo "a+b*c=$compute_1"
