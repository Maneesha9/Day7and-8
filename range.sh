echo 'Enter the range from 0-100' 
echo -n 'Enter range start: ' 
read start
echo -n 'Enter range end: ' 
read end
j=0
if [ $start -eq 0 ]; then 
start=$((1))
fi
for ((i=start; i<=end; i++)) 
do
if [ $((i % 11)) -eq 0 ]; then 
digits[j]=$i
((j++))
fi 
done
echo ${digits[*]}
