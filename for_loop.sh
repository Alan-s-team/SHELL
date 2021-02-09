#!/bin/bash

# 1. C style of FOR loop

# In Ubuntu, by default sh is symbol link to dash, and dash does not support the C style of FOR loop.
# Please make sure to use bash run this script, otherwise, it will print error:
# "Syntax error: Bad for loop variable"

# for((exp1; exp2; expr3) #The meaning of exp[1-3] is same with the ones used in C language
# do
#	statements
# done

for((i=0; i<=100; i++))
do
	#echo $i #echo automatically change line
	printf "%d " $i #printf on the same line without changing line
done

printf "\n"



# 2. Python style of FOR IN loop

# Python style FOR IN loop is more popular and supported in most of shells
# for variable in var_list
# do
#	statements
# done

# 1) var_list given directly
for n in 1 2 3 4 5
do
	echo $n
done

for name in "Alan" "Grace" "Jenny" "Abigale"
do
	echo "My name is $name"
done

# 2) var_list given as {start..end}
for n in {0..100}
do
	echo $n
done
for c in {A..z}
do
	printf "%c" $c
done
printf "\n"

# 3) var_list given as the result of `command` or $(command)
for even in $(seq 2 2 100) #generate all even number from 2 to 100
do
	printf "%d " $even
done
printf "\n"

for file in `ls $HOME`
do
	echo $file
done

# 4) var_list given as wildcard or special variable
function func()
{
	for var in $@ #"in $@" can be empty in this case, and there is the same result
	do
		echo $var
	done
}
func A beautiful place to live
