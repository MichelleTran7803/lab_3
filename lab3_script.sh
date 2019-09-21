!/bin/bash
# Author: Michelle Tran
# Date: 9/19/19

echo "Enter a filename: "
read filename #regex_pracitce.txt
echo "Enter a regular expression"
read regex #I just enter -

grep $regex $filename

grep -c "^[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]$" $filename #Counting how many phone numbers

grep -c -E "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9]+\.[A-Za-z]{2,6}\b" $filename #count how many emails

grep -c "^303-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]$" $filename #count how many numbers that start with 303

grep "@geocities.com" $filename >> "email_results.txt" #writes all geocities email to email_result.txt
