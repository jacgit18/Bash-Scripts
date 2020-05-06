#!/bin/bash -e

echo "pos par one" $1
echo "all pos pars" $@


# -p displays prompt only when input comes from the keyboard
read -p EnterInput1


read -p EnterInput2
echo $EnterInput1  $EnterInput2

# type then space then type and so on
read -p EnterInput3 EnterInput4 EnterInput5

echo $EnterInput3 $EnterInput4 $EnterInput5




# 3 limits iteration you can increase limit
for floop in 1 2 3 7 9 12; do
    if [[ $floop -le 3 ]]; then
        echo -n "var for floop is: $floop"
        echo "... for loop is continunued to its next iterations"
        continue
    fi
    echo "in between"
        if [[ $floop -ge 8 ]]; then
            echo -n "var for floop is: $floop"
            echo "... for loop breakes from its terations"
            break
        fi

done

# echo -n makes things look better



echo
wloop=0
while [[ $wloop -le 3 ]]; do
    echo "while loop var is: $wloop"
    (( wloop += 1  ))
# Arithmetic expression  use double parenthesis ((  ))
done

echo
caseswitch="a"
case $caseswitch in
    a) echo "switch statement is: $caseswitch"
    ;;
    b) echo "switch statement is: $caseswitch"
    ;;
esac


for index in 1 2 3 4 5 6 7 8 9 10 ; do
    if [ $index -le 3 ] ; then
        echo "we continue"
        continue
    fi
    echo "I print index: $index"
    if [ $index -ge 8 ] ; then
        echo "we break"
        break
    fi
done

echo

# Command substitution ` ` use backquotes `  `
echo $(pwd)
echo `pwd`
my_var=$(pwd)
echo $my_var


# Delimit a variable  use curly braces {}
# Needed when enclosing a positional parameter with more than 1 digit
# Needed for a special interpretation of a variable


# use square brackets [ ]
# use double square brackets [[ ]]
# Use spaces after first [ and before last ] or after first [[ and before last ]]
# if [ $Var -eq 2 ] or if [[ $Var -ne 3 ]]
# Double square brackets extend functionalities of single square brackets (use with regular expression)  if [[ $Var =~ [a-z] ]]

if [[ $# -le 2  ]]; then
    echo "not enough pos par"
    exit 1
fi


