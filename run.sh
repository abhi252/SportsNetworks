#!/bin/bash
for filename in ./Data/* ; do
	printf $filename
	printf "\n"
	var1=$(echo $filename | cut -f3 -d/)
	csvfile1="./CSVS/$(echo $var1 | cut -f1 -d.)team0.csv"
	csvfile2="./CSVS/$(echo $var1 | cut -f1 -d.)team1.csv"
	java -jar /c/Users/abhna/Desktop/tabula/tabula-0.9.2-jar-with-dependencies.jar -p all -a 266.996,34.005,435.906,552.643 -o $csvfile1 $filename
	java -jar /c/Users/abhna/Desktop/tabula/tabula-0.9.2-jar-with-dependencies.jar -p all -a 548.005,45.998,716.916,552.73 -o $csvfile2 $filename 
done

