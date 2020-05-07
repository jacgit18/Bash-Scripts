#!/bin/bash -e


# Part 1 (75 pts)  Write a BASH script to create a user account.  
#    The script should process two positional parameters:  
#       o First positional parameter is supposed to be a string with user name (e.g., user_name) 
#       o Second positional parameter is supposed to be a string with user password (e.g., user_password) 

#    The script should be able to process one option (use getopts command): 
#       o Option -f arg_to_ot_f that will make your script direct all its output messages to file  -arg_to_ot_f 

# In your script: 
# --------------
#    Check if option -f was passed to your script and if it has its argument arg_to_ot_f 
#       o If YES, continue your script according to an option that was specified (i.e., send all output messages of your script to arg_to_ot_f)  
#    Check if two positional parameters were passed to your script when it was invoked 
#       o If NOT, print an appropriate message and terminate your script with error (i.e., use exit 1)  
#       o If YES, continue processing both positional parameters 
#    Create a new user on the Linux computer/system on which your script is running (you may have to run your script with root privileges or using sudo command to do it) 
#       o User’s account should have name denoted by the first positional parameter (e.g., user_name) 
#       o User’s account should have password denoted by the second positional parameter (e.g., user_password). 
#         Note that when assigning a password to a user, it must be in encrypted form – research how to do it correctly) 
#    Check if a new directory (e.g., user_name) was crated for the user under /home/ directory 
#       o If NOT, print an appropriate message and terminate your script with error  
#       o If YES, continue to the next step 
#    Check if the new user was added to the list of the users by checking /etc/passwd file 
#     (use grep command with user_name and find out if the line in it for the user was created) 
#       o If NOT, print an appropriate message and terminate your script with error  
#       o If YES, print an appropriate message that the user was successfully added and terminate your script with success 
#         (i.e., use exit 0) 
      
# Part 2 (20 pts) Write a short SAD program ( a set of SED instructions) that perform following 
# operations on a long_file.txt file (you can download it from Blackboard -> Useful Links). Your SED program should: 
#    Remove, from long_file.txt all lines starting with strings A, An and The (i.e., Capital A at the beginning of the line, 
#     string An and the beginning of the line and string The at the beginning of the line)  
#    Then, substitute all hyphened worlds (e.g., Unix-like, multi-user) with double hyphened words 
#     (e.g., Unix-like becomes Unix—like and multi-user becomes multi--user) 2)  
#    Insert current date and your name after the last line of long_file.txt 
#    Save edited file as  long_file.txt.new by adding .new to the name of the file 

# Part 3 (5 pts) 
#    Log as a user that you created in Part 1 of the assignment using user_name and user_password. If you successfully logged 
#     to the new account, write “Yes, I successfully logged in as the new user” as a note when submitting it in Blackboard. 

# Functions affect positional parameters so create outside function
Username=$1;
Pass=$2;
# positional parameter range fr0m $0 to $9
#function SedGetter (){

echo "Username is $Username ";
echo "Password is $Pass ";

# echo "$0"; # prints shell script name which is at postion zero
# echo "Username and password $@ "; # displays param passed 
# echo "Number of param $# "; # displays count of param


# Create user in home dir and print it and delete and print again
 sudo adduser --home /home/$Username $Username; # how pass password
# useradd -m -p $(openssl passwd -1 -salt $SALT $PASS);
# echo $Pass | passwd --stdin $Pass
ls /home;
sudo userdel -r $Username;
ls /home;

while getopts "f:" opt_var1; do
    case $opt_var1 in
          f) echo "-f was triggered, Parameter: ${OPTARG}" >&2 ;;
         \?) echo "Invalid option: ${OPTARG}" >&2  ;; # store option not given     
          :)  echo "Option -$OPTARG requires an argument." >&2 ;; # check if arg before or after semi colon  
    esac
done
exit 0

#zip -r As5_jcarpentier ../As5_jcarpentier

#}



#SedGetter "$@" "$#" 
 

