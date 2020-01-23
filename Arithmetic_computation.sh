echo "Welcome to Arithmetic operation"
read -p "Enter three numbers : " a b c
echo "a=$a b=$b c=$c"

operation1=`echo "scale=2;($a+($b*$c))" | bc`;
echo "a+b*c : "$operation1

operation2=`echo "scale=2;($a*($b+$c))" | bc`;
echo "a*b+c : "$operation2

operation3=`echo "scale=2;($c+($a/$b))" | bc`;
echo "c+a/b :" $operation3

