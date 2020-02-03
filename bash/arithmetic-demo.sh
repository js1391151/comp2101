#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

echo "Please enter a number:"
read firstnum
echo "Enter a second number:"
read secondnum
echo "Enter a third number:"
read thirdnum
sum=$((firstnum + secondnum + thirdnum))
multiplication=$((firstnum * secondnum * thirdnum))

cat <<EOF
Multiplying $firstnum, $secondnum and $thirdnum is $multiplication
addition of $firstnum, $secondnum and $thirdnum is $sum
EOF
