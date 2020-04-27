#!/bin/bash -e




function  AwkGetter (){
   awk -f As4_jcarpentier.awk salary_file.txt
# Ask a user to input a file name with AWK program 
# (e.g., user can type As4_yourName.awk and you should
# test your script with this file). Use read command to 
# prompt user to enter a file name and store it in a variable
# (e.g., in a variable var_1).  

# Check if the user entered a valid file name 
#  a. check if a file exists 
#  b. check if a file is executable 
#  c. check if the file has extension .awk, hence consist of an AWK program 
 
# 4. Ask a user to input a file name with input data 
# (e.g., user can type salary_file.txt and you should 
# test your script with this file). Use read command 
# to prompt user to enter a file name and store it in
# a variable (e.g., in a variable var_2).  
 
# 5. Check if the user entered a valid file name 
#  a. check if a file exists 
#  b. check if a file is readable 
#  c. check if the file has extension .txt  
  
# 6. Print to a screen/terminal message that validation in points 3. And 4.
# above were successful and run the AWK program with the input file that 
# user entered (e.g.,  awk -f $var_1 $var_2) 
 
# 7. Or, if a file with AWK program does not satisfy any of 3.a.-3.c 
# or a readable input file does not exist 
#  a. print to a screen/terminal appropriate feedback to the user 
#  b. exit/terminate your script with error

# You should test your script by running it with your program written 
# for Part 1 of this assignment 
# (i.e., As4_yourName.awk) on the input file salary_file.txt. 

# Part 3 
# Run your script that your coded for Part 2 of this assignment 
# (i.e., As4_yourName.awk) and capture its output.
#  $ ./As4_yourName.sh As4_yourName.awk  salary_file.txt > As4_yourName.out 
# Use ZIP compression tool to compress As4_yourName.awk, As4_yourName.sh 
# and As4_yourName.out and submit the compressed file via Blackboard 

}



function FuncCall (){
echo "====Joshua Carpentier===="
echo
echo "Solution to Assignment 4, Part 2"
echo "This is part 1 of Assignment 3"
echo "============================="
AwkGetter

#zip -r As4_jcarpentier ../As4_jcarpentier

}

echo "==========Master Function=========="
FuncCall



