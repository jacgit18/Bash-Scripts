#!/bin/awk -f
# joshua Carpentier, 04/20/2020
# Response to assignment 4
#===============================================================
# awk cat equvivalent which prints content of file
# awk '{print $0 }' Downloads/my_diff_A.txt

# awk grep equvivalent grep search with regular expression
# awk '/buy/' Downloads/my_diff_A.txt
#===============================================================
# for loop for begingng and if and while for end
BEGIN	{
    print "======Started======="; 
    print "My name is Joshua Carpentier"; format = "%b/%d/%Y";
    print strftime(format);
    print "Solution to Assignment 4, Part 1";
    total;
 } 
# three fields: name, hourly wage, and hours worked 
#try storing others

# This stores hourly wage and hours worked in total vairiable then store total in 
# 4th coulmn then puts a condition if total is lesser then 100 print column with names
# and column 4 that stores the total with values less then 100
{total = $2 * $3; $4 = total;}   $4 < 100    {print $1 " " $2 "  " $4}


# Printing names of all employees with hourly wages less than $10 per hour  
# $2 < 10 {print $1 "  " $2}
         
# Records of all employees whose names start with a letter A, B, D, or K-Z
 #/[\<A-B\<D\<K-Z]/  {print}

# Total wage paid out
{sum += $2}

# Name of the employee that worked the least hours 
NR == 1 {LeastHours = $1; min = $3}
     NR > 1 && $3 < min {LeastHours = $1; min = $3}

# Name of the employee that earned the most money 
{$4 = $2 * $3; }
     NR == 1 {HighestPaid = $1; max = $4}
     NR > 1 && $4 > max {HighestPaid = $1; max = $4}

# Total number of employees 
NF==4{count++}

END {

print "======Finished======="; 

print FILENAME;

print "The total of hourly wage is: " sum;

print LeastHours " worked least amount hours";

print HighestPaid " earned the most money";

print "The total number of employees is: " count;


}
