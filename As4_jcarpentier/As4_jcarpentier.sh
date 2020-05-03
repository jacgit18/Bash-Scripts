#!/bin/bash -e
#need to fix extension detection
function  AwkGetter (){
    
# As4_jcarpentier.awk salary_file.txt
echo "What is your awk and txt file name";
read awkFile txtFile;

#echo "What is your awk file name";
#read awkFile 
#echo "What is your txt file name";
#read txtFile;

#  check if a file exists, if a file is readable or if the file has extension .txt
 
if [[ -f ./"$awkFile" && -x ./"$awkFile" ]]; then # doesnt work for some reason && ${file: -4} == ".awk" ]]; then 
    echo "file exist is executable and ends with awk extension";
else
    echo "There is no file that exist or is executable or ends with awk extension";
    exit 1
fi

#  check if a file exists, if a file is executable or if the file has extension .awk
if [[ -f ./"$txtFile" && -r ./"$txtFile" ]]; then # doesnt work for some reason && ${file: -4} == ".txt" ]]; then 

  echo "file exist is readable and ends with txt extension";
else
    echo "There is no file that exist or is readable or ends with txt extension";
    exit 1
fi
awk -f $awkFile $txtFile;

#awk -f $awkFile salary_file.txt;
#awk -f $1 $2;
#awk -f $awkFile $1; # find out how to pass file as positional parameter


  

 
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
echo
echo "Solution to Assignment 4, Part 2"
echo "================================"
AwkGetter

#zip -r As4_jcarpentier ../As4_jcarpentier

}

FuncCall



