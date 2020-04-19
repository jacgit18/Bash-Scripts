#!/bin/bash -e
#-u (unset) exit when try to expend unset variable which can affect script from running if using positional parameter 

echo "--Joshua Carpentier ------------"
# Response to Assignment 2, Part 2, Problem 1 -------------------------
echo “Response to Assignment 2, Part 2, Problem 1”
date
echo "my login shell is" $SHELL
echo "$(history | tail -1)"
pwd
echo ~
echo "Cst_3523 Cst_4708 Cst_4800 Cst_4900 Eng_2575"
echo "-----------"


# Response to Assignment 2, Part 2, Problem 2 ----------------------------------
echo “Response to Assignment 2, Part 2, Problem 2”
echo "-----------"
CST_courses_I_completed=( Cst_1100 Cst_1101 Cst_1201 Cst_1204 Cst_1215 Cst_2301 Cst_2307 Cst_2309 Cst_2400 Cst_2410 Cst_2415 Cst_2801 Cst_3513 Cst_3519 Cst_3606 Cst_3613 Cst_3650 )
echo " These are all the CST courses I completed: ${CST_courses_I_completed[*]}"
echo " Fourth class: ${CST_courses_I_completed[3]}"
echo " element length array: ${#CST_courses_I_completed[*]}"
CST_courses_I_completed[2]=Queens
echo " These are all the CST courses I completed: ${CST_courses_I_completed[*]}"
echo "-----------"

# Response to Assignment 2, Part 2, Problem 3 ---------------------------------
echo “Response to Assignment 2, Part 2, Problem 3”
echo "-----------"
# All positional parameters send to the script 
echo "zero pos par is:" $0

#var=("$@")
#echo ${var[1]}
#set one two three
echo "first pos par is: $1"
echo "second pos par is: $2"
echo "third pos par is: $3" 
echo $#
# Testing things
CST_courses_I_completed=("$@")
echo ${CST_courses_I_completed[0]}
#echo "Count $#" 
#echo ${CST_courses_I_completed[*]}
#echo " element length array:" ${#CST_courses_I_completed[$3]}
echo "-----------"

# Response to Assignment 2, Part 2, Problem 4 -----------------------------------
echo “Response to Assignment 2, Part 2, Problem 4”
echo "-----------"
echo $PATH
export PATH="~:$PATH"
echo $PATH
echo "-----------"
