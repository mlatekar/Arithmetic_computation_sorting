echo "Welcome to Arithmetic operation"
read -p "Enter three numbers : " a b c
echo "a=$a b=$b c=$c"
declare -A operation

operation[operation1]=`echo "scale=2;($a+($b*$c))" | bc`;
echo "a+b*c : "${operation[operation1]}

operation[operation2]=`echo "scale=2;($a*($b+$c))" | bc`;
echo "a*b+c : "${operation[operation2]}

operation[operation3]=`echo "scale=2;($c+($a/$b))" | bc`;
echo "c+a/b :" ${operation[operation3]}

operation[operation4]=`echo "scale=2;(($a%$b)+$c)" | bc`;
echo "a%b+c :" ${operation[operation4]}

