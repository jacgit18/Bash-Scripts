#!/bin/bash -e


echo "What is your awk and txt file name";
awkFile=$1; txtFile=$2; # Used positional parameter instead of read
function  AwkGetter (){
#    >your8.txt # which makes a file

# As4_jcarpentier.awk salary_file.txt

#  check if a file exists, if a file is readable or if the file has extension .awk
if [[ -f ./"$awkFile" && -x ./"$awkFile" && ${awkFile: -4 } == ".awk" ]]; then 
    echo "file exist is executable and ends with awk extension";
else
    echo "There is no file that exist or is executable or ends with awk extension";
    exit 1
fi

#  check if a file exists, if a file is executable or if the file has extension .txt
if [[ -f ./"$txtFile" && -r ./"$txtFile" && ${txtFile: -4} == ".txt" ]]; then 

  echo "file exist is readable and ends with txt extension";
else
    echo "There is no file that exist or is readable or ends with txt extension";
    exit 1
fi
awk -f $awkFile $txtFile;

#awk -f $awkFile salary_file.txt;
#awk -f $1 $2;
#awk -f $awkFile $1; # find out how to pass file as positional parameter


}

function FuncCall (){
echo
echo "Solution to Assignment 4, Part 2"
echo "================================"
AwkGetter
zip -r As4_jcarpentier ../As4_jcarpentier
}

FuncCall



