#!/bin/bash -eux 

# eux e exit when simple command fails
# u exit when try to expend unset variable which can affect script from running if using   prositional parameter 
# x turns on debug

# joshua Carpentier 
# 3/4/2020
# Assignment 2 intro to scripting problem 1
# this script runs commands
echo "my name is"
pwd
echo "Joshua  Carpentier "
echo "my login shell is" $SHELL
# comment in scripts
# handling variriables dont forget $ for echo of variable
my_var_1=brooklyn
echo "var var_1 is: " $my_var_1
var_2=bob
echo $var_2
var_2=123
echo $var_2
readonly var_2
echo "----------------------------"

#var_2="NY" readonly test
# Scripting array
arr_A=( car mars list dream bob )
# only first element is printed
echo $arr_A
echo " first element in array: ${arr_A[0]}"
echo " second element in array: ${arr_A[1]}"
echo " all elements in array: ${arr_A[*]}"
echo " all elements in array with @: ${arr_A[@]}"
echo " element length array: ${#arr_A[0]}"
# created new variable then replaced element in array with it
arr_A[1]=pluto
echo ${arr_A[*]}
echo "-----------"

# handleing positional variable
#echo " first pos par is: $1" unbound error is caused by line 1 "u" in -eux

#echo " second  pos par is: $2"

#echo " calling program is: $0"

var_c=var_d
var_d="dog" 
echo $var_c
for var_n in one two three four 
do 
echo $var_n
done
echo "-----------"

set zero one two three
#echo “$3 $2 $1 $0”zero would give bash
echo "$4 $3 $2 $1"
echo "-----------"


for i in $@; do # Same as for i;do
echo "Now the first argument  is: $i"
shift
done 
echo "-------------"

 declare -x my_var # -x same as export command -r would be readonly -a would be array
# f is function name and i is integer

echo "-------------"

word1=“abc”
word2=“abc”
if [[ “$word1” = “$word2” ]]
then
echo “Words match.”
fi
echo "-----------"


for (( count=0; count<=10; count+=1 ))
do
echo “$count”
done

echo "------------"



for arg; do # arg is equivalent to arg in $@
echo $arg
done

echo "--------------"

number=0
while [ $number -lt 10 ]; do
echo -n “$number”
(( number+=1 ))
done

echo "--------------"
for index in 1 2 3 4 5 6 7 8 9 10 ; do
if [ $index -le 3 ] ; then
echo “we continue“
continue
fi
echo “I print index: $index”
if [ $index -ge 8 ] ; then
echo “we break“
break
fi
done

