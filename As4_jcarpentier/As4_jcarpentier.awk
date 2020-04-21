# My first awk problem
# joshua Carpentier, 04/20/2020
# Response to assignment 4
# run awk in terminal  awk -f As4_jcarpentier.awk salary_file.txt 

# awk cat equvivalent which prints content of file
# awk '{print $0 }' Downloads/my_diff_A.txt

# awk grep equvivalent grep search with regular expression
# awk '/buy/' Downloads/my_diff_A.txt

BEGIN	{print "My name is Joshua Carpentier"}
# search 
/^B/ && $3 > 60 {print}
END {print "Finished"}