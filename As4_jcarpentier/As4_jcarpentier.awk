#!/bin/awk -f
# joshua Carpentier, 04/20/2020
# Response to assignment 4
#===============================================================
# awk cat equvivalent which prints content of file
# awk '{print $0 }' Downloads/my_diff_A.txt

# awk grep equvivalent grep search with regular expression
# awk '/buy/' Downloads/my_diff_A.txt
#===============================================================

BEGIN	{print "My name is Joshua Carpentier"; format = "%d/%b/%Y";
print strftime(format);
print "Solution to Assignment 4, Part 1";
 } 
# Search for element starting with B and print something in column 3 greater than 60  
# /^B/ && $3 > 60 {print}

# II. In the main block/segment(s), print to screen 
    # a. names and total salaries (only names and total salaries without 
        # hours worked) of employees that earned in that work period less 
        # than $100.00 (not entire records)  
         
    # b. names of all employees with hourly wages less than $10 per hour  
    # c. records of all employees whose names start with a letter A, B, D, or K-Z 
END {print "Finished"; 
print FILENAME}
# III. In the END block/segment, print to screen a. Name of the file that you are 
    # processing (do not hardcode the name of the file) 
    # a. print filename 
    # b. Total amount paid to the all employees   
    # c. Name of the employee that worked the least hours 
    # d. Name of the employee that earned the most money 
    # e. Total number of employees 