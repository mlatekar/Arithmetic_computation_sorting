echo "Welcome to Arithmetic operation"
read -p "Enter three numbers : " a b c
echo "a=$a b=$b c=$c"
declare -A operation

function result() {
	for (( i=0; i<4; i++))
	do
		array[$i]=${operation[operation$((i+1))]}
	done   
}
function descending(){
	for (( i=0; i<$size; i++ ))
	do
		for (( j=i+1; j<=$size; j++ ))
		do
			if [[ ${array[i]%%.*} -lt ${array[j]%%.*} ]]
			then
				temp=${array[i]}	
				array[i]=${array[j]}
				array[j]=$temp
			fi
		done
	done
}
function Ascending(){
   for (( i=0; i<$size; i++ ))
   do
      for (( j=i+1; j<=$size; j++ ))
      do
         if [[ ${array[i]%%.*} -gt ${array[j]%%.*} ]]
         then
            temp=${array[i]}  
            array[i]=${array[j]}
            array[j]=$temp
         fi
      done
   done
}

operation[operation1]=`echo "scale=2;($a+($b*$c))" | bc`;
echo "a+b*c : "${operation[operation1]}

operation[operation2]=`echo "scale=2;(($a*$b)+$c)" | bc`;
echo "a*b+c : "${operation[operation2]}

operation[operation3]=`echo "scale=2;($c+($a/$b))" | bc`;
echo "c+a/b : "${operation[operation3]}

operation[operation4]=`echo "scale=2;(($a%$b)+$c)" | bc`;
echo "a%b+c : "${operation[operation4]}



result   #call the function to store result in array
echo "using array print values  : "${array[@]} #print the result 
size=${#array[@]}
descending
echo "result in desending order : "${array[@]}
Ascending
echo "result in Ascending order :"${array[@]}

