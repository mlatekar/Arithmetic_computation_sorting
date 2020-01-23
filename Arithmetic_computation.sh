echo "Welcome to Arithmetic operation"
read -p "Enter three numbers : " a b c
echo "a=$a b=$b c=$c"

operation1=$(($a+$b*$c))
echo "a+b*c : "$operation1

operation2=$(($a*$b+$c))
echo "a*b+c : "$operation2
