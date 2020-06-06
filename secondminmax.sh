start=100 
end=999
div=$((end-start+1)) #+1 to include the end
for i in {0..9}
do
randomArray[$i]=$(($((RANDOM % div)) + start))
done
min=9999
secmin=0 
max=0 
secmax=0
for i in {0..9} 
do
if [ ${randomArray[i]} -gt $max ]; then 
secmax=$max
max=${randomArray[i]} 
fi
if [ ${randomArray[i]} -lt $min ]; then 
secmin=$min
min=${randomArray[i]}
fi 
done
echo ${randomArray[*]} 
echo -n 'second min: ' 
echo $secmin
echo -n 'second max: ' 
echo $secmax
