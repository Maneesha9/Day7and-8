echo 'enter a number to find the compute factors' read n
j=0
for (( i=2; i*i<n; i++ )) 
do
if [ $((n % i)) -eq 0 ]; then 
factors[j]=$i
((j++))
fi
done
echo ${factors[*]}
