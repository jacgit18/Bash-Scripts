#!/bin/bash -e

echo
echo "====Joshua Carpentier===="
echo

function  PosParamChecker (){
# part 1 
# Check how many arguments (positional parameters) ware passed to the script and for
# each of these arguments:
# Check if it refers to a file name in your file system (check if a file with that name (and
# path) exists on your file system)
# If yes, print to screen/terminal that it exists (e.g., echo “file $1 exists” – note that
# the name of argument/parameter will be different for each positional parameter)
# If not, print to screen/terminal that it could not be found in a filesystem (e.g., echo
# “file $1 could not be found” – note that the name of argument/parameter will be
# different for each positional parameter)
# print to screen if positional parameters were not provided to this script


if [[ -f ./"$1" ]]; then
    echo "$1" exists
elif [[ ! -f ./"$1" ]]; then 
  echo "$1 file doesnt exist in dir"
elif [[ $# -eq 0 ]]; then 
  echo "no argument passed"
fi
}

function usage (){
# part 2
# This function will print to screen/terminal basic information on how to use this
# script
# Examples what this function should print are:
#  ^* Name of the script (i.e., As3_YourName.sh)
#  ^* A few words stating what it does (e.g., echo “the script is a response to
#     assignment 3”)
#  <* What positional parameters it expects to receive (see Problem 1 of this
#    assignment and rephrase what the script should receive in a form of
#    positional parameters)
#  ^* What options are expected by this script (see Problem 5 of this assignment
#    and rephrase what options this script can process)
#  ^* Exit the script with failure (i.e., use exit 1 statement)

#script_name1=`basename $0`
#echo $script_name1
echo "This is a script for assignment 3 to test positional parameters and other things"
echo "like the getopts which takes option -x -y -z"

echo "--------------------------------------------------------------------------------"
script_name2=`basename "$(realpath $0)"`
echo $script_name2

script_relative_path1=`dirname $0`
echo "Script-Dir-Relative : $script_relative_path1"
echo
#script_relative_path2=`dirname "$BASH_SOURCE"`
#echo "Script-Dir-Relative : $script_relative_path2"
#echo

#script_path1=$(dirname "$(readlink -f "$BASH_SOURCE")")
#echo "Script Path 1: $script_path1"
#echo
script_path2=`pwd`
echo "Script Path 2: $script_path2"
}

function garbagecheck (){
# part 3
# Declare a function (give it any name) that
# a. Checks if ~/Garbage directory exists in a filesystem
#    * If yes, print to screen/terminal appropriate message confirming it (e.g., echo “Garbage exists in the home directory”)
#    * If not,
#        Print to screen/terminal appropriate message it (e.g., echo “Garbage does not exist in the home directory”
#        Create ~/Garbage directory (use mkdir command)
#    * Check if ~/Garbage directory was created
#        if yes, print to screen/terminal message stating successful creation of ~/Garbage directory
#        if not, print to screen/terminal a message stating that it could not be created
#mkdir ~/name

  if [ -d "/home/jac/Documents/Bash Scripts/As3_jcarpentier/Garbage" ] 
then
    echo "Directory Garbage exists. " 
else
    echo "Error: Garbage Directory does not exists."


fi
}


function NameGetter (){
# part 4
# prompts a user (whoever runs this script) on a terminal to enter his/her (user’s) first and last names
#    reads user response into 2 variables
#    checks if both of the variables are not empty (check if the user entered at least 2 strings)
#    prints to screen terminal user’s first name


echo "What is your first name"
read firstname 
echo
echo "What is your last name"
read lastname
echo
if [[ -n $firstname && $lastname ]]; then
  echo "Your first name is $firstname and last name is $lastname"
  elif [[ -n $firstname  ]]; then 
    echo "only first name is provided which is $firstname"
  elif [[ -n $lastname  ]]; then 
    echo "only last name is provided which is $lastname"
  elif [[ -z $firstname && -z $lastname  ]]; then 
    echo "No name provided"  
fi
}





function FuncCall (){
echo "This is part 1 of Assignment 3"
echo "============================="
PosParamChecker
echo
echo "This is part 2 of Assignment 3"
echo "==============================="
usage
echo
echo "This is part 3 of Assignment 3"
echo "==============================="
garbagecheck
echo
echo "This is part 4 of Assignment 3"
echo "=============================="
NameGetter
echo
echo "This is part 5 of Assignment 3"
echo "=============================="

}

echo "==========Master Function=========="
FuncCall
#test
# didnt work in function for some reason
# part 5 of assignment

# * part 1 Write a bash code that checks if options x, y and Z where invoked by the user when the script was called.
#   I strongly advise you to use getopts command to handle options passed to your script. In this problem:
# * part 2 only option Z expects its own argument
# * part 3 display to the screen (terminal) information which, if any, option was triggered
# * part 4 generate (handle) error messages if, for example, the user tried to invoke invalid (unexpected) option 
#   or an error message if the right option was used by the user but did not specify an argument that this option expects


# :ab: the semmi colon at beginging handles errors avoid also >&2 handles output errors
# doesnt look like you can pass multiple parameters in this format xyz: 
while getopts "xyz\::" opt_var1; do
    case $opt_var1 in
          x) echo "-x was triggered, Parameter: ${OPTARG}" >&2;;
          y) echo "-y was triggered, Parameter: ${OPTARG}" >&2;;
          z) echo "-z was triggered, Parameter: ${OPTARG}" >&2;;
         \?) echo "Invalid option: ${OPTARG}" >&2  ;;     
    esac
done
exit 0



function Notes (){


echo "======== Notes ========"

# do else if
if [[ $VAR -gt 3 ]]
then
  echo "The variable is greater than 10."
else
  echo "The variable is equal or less than 10."
fi

echo "-----------------------------------"
echo "run command by running script with arg: $1 "
echo "but adding more for each arg will display like this $2"
echo "this will count extra arg but not display $# "
echo "this will print all arg $@ "


# print to screen if positional parameters were not provided to this script
echo "--------------------------------------------------------"



#if [[ $# -lt 1 ]]; then
#    echo "error"
#   exit 1
#fi
#for myvar in $@; do
#echo "run command by running script with arg: $3 "
#done


}