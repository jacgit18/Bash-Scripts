#!/bin/bash -e

# if opt_used is true 
# check $Username & $Pass vairiables are  empty-> if empty call error
# run useradd with ridirection to opt_file (useradd $Username $Pass > opt_file)

# if opt_used is false get pos param which changes to $1 $2
# $Username $Pass and run useradd without redirectioning  
#  useradd $Username $Pass

function  ErrorChecker(){
  echo "Error"
  exit 1
  
}

if [[ ! $@ =~ ^\-.+ ]];then 
  echo "Missing -f flag "
  ErrorChecker
fi
 opt_used="false"
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
                echo "Argument $2 & $3 where passed to username & password" >&2 
                opt_used="true"
                opt_file=$OPTARG
                Username=$2 
                Pass=$3 
                # if [[ opt_used = true ]]; then
                #     -z $Username $Pass
                #     $Username=$1
                #     $Pass=$2
                #     echo "$@"
                # fi
                ;;# displays all param passed 
               


          \?) echo "Invalid option: ${OPTARG}" >&2  ;; # store option not given     
           :) echo "Option -${OPTARG} requires an argument." >&2 ;; # f no argument is provided getopts 
           # will set opt to :. We can recognize this error condition by catching the : case and printing 
           # an appropriate error message.
     esac
 done




# Create user with encrypted password
sudo useradd -m -p $(openssl passwd -1 ${Pass}) -s /bin/bash ${Username}

# sudo useradd -c "$Username" /home/$Username -m -U -s /bin/bash -k /etc/skel $Username -p $Pass
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
# sed -r -i 's/^\b(An|A|The)\b//gI' long_file.txt
# sed -r -i 's/-/--/g' long_file.txt

#dat=`date "+%D" `
# sed -ri "1s#(.*)#${dat}\1#" long_file.txt
#sed -i -e '$s/$/Joshua Carpentier/' long_file.txt
#sed -i "s/\$/ $var/" long_file.txt 

# echo >> long_file.txt
# echo "Joshua Carpentier" >> long_file.txt
# date >> long_file.txt
# cp long_file.txt long_file.txt.new

#zip -r As5_jcarpentier ../As5_jcarpentier
