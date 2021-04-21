
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

res3=$(($c+$a/$b))
echo "output of expression is "$res3

#UC5

res4=$(($a%$b+$c))
echo "output of expression is "$res4

#UC6

declare -A resDic

resDic[res1]=$res1
resDic[res2]=$res2
resDic[res3]=$res3
resDic[res4]=$res4


#UC7

declare -a array
for (( i=1 ; i<=4; i++ ))
do
   array[i]=${resDic[res$i]}
done

#UC8
  for (( i=1 ; i<4 ; i++ ))
do
   for (( j=1 ; j<5-i ; j++ ))
   do
       if [[ ${array[j]} -le ${array[$((j+1))]} ]]
       then
             temp=${array[$j]}
             array[$j]=${array[$((j+1))]}
             array[$((j+1))]=$temp
       fi
    done
done

echo "Array elements are "
for (( i=1 ; i<5 ; i++ ))
do
     echo ${array[i]}
done

#UC9
 for (( i=1 ; i<4 ; i++ ))
do
   for (( j=1 ; j<5-i ; j++ ))
   do
        if [[ ${array[j]} -ge ${array[$((j+1))]} ]]
       then
             temp=${array[$j]}
             array[$j]=${array[$((j+1))]}
             array[$((j+1))]=$temp
       fi
    done
done

echo "Array elements are "
for (( i=1 ; i<5 ; i++ ))
do
     echo ${array[i]}
done
