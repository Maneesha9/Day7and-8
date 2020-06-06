
echo -n 'enter first number: ' 
read n[0]
echo -n 'enter second number: ' 
read n[1]
echo -n 'enter third number: ' 
read n[2]
sum=$((${n[0]} + ${n[1]} + ${n[2]})) 
if [ $sum -eq 0 ]; then
echo 'the sum of given three numbers is zero' 
else
echo 'the sum of given three numbers is not zero'
fi
