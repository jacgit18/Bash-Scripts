#!/bin/bash -e

# In your script: 
# --------------
#    Create a new user on the Linux computer/system on which your script is running
#     (you may have to run your script with root privileges or using sudo command to do it)
#       o User’s account should have name denoted by the first positional parameter (e.g., user_name) 
#       o User’s account should have password denoted by the second positional parameter (e.g., user_password). 
#         Note that when assigning a password to a user, it must be in encrypted form – research how to do it
#          correctly) 


# 1) check also if there are exactly 2 non-empty positional parameters

# 4) you have to retrieve argument that was passed to option -f somewhere in or after line  29   
               # if [[ ! $@ =~ ^\-.+ && $# > 1 ]];then 

function  ErrorChecker(){
  echo "Error"
  exit 1
}
 opt_used="false"

if [[ ! $@ =~ ^\-.+ ]];then 
 echo "Missing -f flag"
fi
 while getopts ":f:" opt_var1; do
     case $opt_var1 in
            f) echo -n "Option $1 was passed "
               if [[ $# -lt 3 ]]; then 
                    echo "Not enough parameter less than three" 
                    ErrorChecker
                elif [[  $# -gt 2 ]];then
                  echo "total number of param $# "
                  # positional parameter range from $0 to $9
                  # echo "$0"; # prints shell script name which is at postion zero
                fi
                echo "Argument for Username & Password passed & are $2 & $3" >&2 
                opt_used="true"
                opt_file=$OPTARG
                Username=$2
                Pass=$3
                ;;# displays all param passed 
               


          \?) echo "Invalid option: ${OPTARG}" >&2  ;; # store option not given     
           :) echo "Option -${OPTARG} requires an argument." >&2 ;; # f no argument is provided getopts 
           # will set opt to :. We can recognize this error condition by catching the : case and printing 
           # an appropriate error message.
     esac
 done




# Create user with encrypted password
# sudo useradd -m -p $(openssl passwd -1 ${Pass}) -s /bin/bash -d ${Username}

# sudo useradd -c "$Username" -d /home/$Username -m -U -s /bin/bash -k /etc/skel $Username -p $Pass
# echo $Pass | openssl enc -base64 -e -aes-256-cbc -pbkdf2 -iter 100000 -nosalt  -pass pass:garbageKey # changes passwd
# decrypt
# echo $Pass | openssl enc -base64 -d -e -aes-256-cbc -pbkdf2 -iter 100000 -nosalt  -pass pass:garbageKey 
# #sudo passwd $Username
#  ls /home;
#  sudo userdel -r $Username; # test purposes
#  ls /home;

if [[ -d "/home/$Username" ]] && grep -Fq "$Username" /etc/passwd; then
  echo "$Username was created in home dir and exist in passwd "
else 
  echo "$Username Doesnt exist in home or /etc/passwd "
  ErrorChecker
fi  

#zip -r As5_jcarpentier ../As5_jcarpentier

# if grep -Fq "$Username" /etc/passwd
# then
#     echo "$Username exist"

# else
#     echo "$Username doesnt exist"
#     exit 1
# fi
# if awk -F: /$Username/ /etc/passwd; then
#   echo "$Username exist"
# else 
#   echo "$Username doesnt exist"
#   exit 1
# fi

# can be done in awk 
sed -r -i 's/^\b(An|A|The)\b//gI' long_file.txt
sed -r -i 's/-/--/g' long_file.txt
#dat=`date "+%D" `
# sed -ri "1s#(.*)#${dat}\1#" long_file.txt
#sed -i -e '$s/$/Joshua Carpentier/' long_file.txt
#sed -i "s/\$/ $var/" long_file.txt 
echo >> long_file.txt
echo "Joshua Carpentier" >> long_file.txt
date >> long_file.txt
cp long_file.txt long_file.txt.new

