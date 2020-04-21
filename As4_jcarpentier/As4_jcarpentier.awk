# My first awk problem
# joshua Carpentier, 04/20/2020
# Response to assignment 4
# run awk in terminal  awk -f As4_jcarpentier.awk salary_file.txt 


BEGIN	{print "My name is Joshua Carpentier"}
# search 
/^B/ && $3 > 60 {print}
END {print "Finished"}