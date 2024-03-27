#!/bin/bash

# Check if two arguments are provided

[ ${#} -ne 2 ] && echo "not enough parameters" && exit 1 

#check if the first and the second operands are  numbers or not
CO=$(echo ${1} | grep -c "^[0.1-9.9]*$")
[ ${CO} -ne 1 ] && echo "1st operand is not a number" && exit 3
CO=$(echo ${2} | grep -c "^[0.1-9.9]*$")
[ ${CO} -ne 1 ] && echo "2nd operand is not a number" && exit 4

#check if the denominator is zero or not
[ ${2} -eq 0 ] && echo "Division by zero" &&  exit 2

# Perform arithmetic operations
addition=$(awk "BEGIN { printf \"%.2f\", $1 + $2 }")
multiplication=$(awk "BEGIN { printf \"%.2f\", $1 * $2 }")
subtraction=$(awk "BEGIN { printf \"%.2f\", $1 - $2 }")
division=$(awk "BEGIN { printf \"%.2f\", $1 / $2 }")

# Print the results with decimal numbers
echo "${1} + ${2} = $addition"
echo "${1} * ${2} = $multiplication"
echo "${1} - ${2} = $subtraction"
echo "${1} / ${2} = $division"

exit 0
