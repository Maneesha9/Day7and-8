die=( [1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0 )
while :
do
num=$(( $(( RANDOM % 6 )) + 1))
if [ ${die[num]} -eq 10 ]; then 
break
fi
die[$num]=$(( ${die[num]} + 1 )) 
done
echo ${die[*]} 
max=0
min=99
for ((i=1;i<=6;i++)) 
do
if [ ${die[i]} -gt $max ]; then 
max=${die[i]}
maxnumber=$i 
fi
if [ ${die[i]} -lt $min ]; then 
min=${die[i]}
minnumber=$i
fi 
done
echo 'number that has showed maximum times' $maxnumber 
echo 'number that has showed minimum times' $minnumber
