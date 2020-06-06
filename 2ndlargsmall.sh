start=100 
end=999
div=$((end-start+1)) #+1 to include the end 
for i in {0..9}
do
randomArray[$i]=$(($((RANDOM % div)) + start)) 
done
for ((i=0; i<10; i++)) 
do
for ((j=i; j<10; j++)) 
do
if [ ${randomArray[i]} -gt ${randomArray[j]} ]; then 
temp=${randomArray[i]} 
randomArray[$i]=${randomArray[j]} 
randomArray[$j]=$temp
fi 
done
done
echo ${randomArray[*]} 
echo -n 'second min: ' 
echo ${randomArray[1]} 
echo -n 'second max: ' 
echo ${randomArray[8]}
