#!/bin/bash -x
echo "welcome "

#UC1

read -p "enter 1st value " a
read -p "enter 2nd value " b
read -p "enter 3rd value " c

#UC2

res1=$(($a+$b*$c))
echo "output of expression is "$res1

#UC3

res2=$(($a*$b+$c))
echo "output of experssion is "$res2

#UC4

res3=$(awk "BEGIN {print (($c+$a/$b))}")
echo "output of expression is "$res3

#UC5

res4=$(($a%$b+$c))
echo "output of expression is "$res4

#UC6

declare -A array

array[res1]=$res1
array[res2]=$res2
array[res3]=$res3
array[res4]=$res4

