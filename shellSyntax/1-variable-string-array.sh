#!/bin/bash
##############
# Author: dennis
# Date: 2023/06/14
# Description: practice bash shell
##############

# Output string
echo "hello world!"

# Define a variable
variable_name="dennis"
echo ${varibale_name}

for filename in $(ls ./); do
    echo ${filename}
done

for language in JS JAVA TS NODE; do
    echo ${language}
done

# Set readonly variable
variable_age="30"
readonly variable_age
variable_age="31"

# Delete variable, couldn't be used in later context
unset variable_age
echo ${variable_age}

# String
string_double_qutation="double qutation string"
string_single_qutation='single qutation string'
string_no_qutation=no

echo ${string_double_qutation}
echo ${string_single_qutation}
echo ${string_no_qutation}

# Get String length
echo ${#string_double_qutation}

# Extract string
echo ${string_double_qutation:1:10}

# Combine string
my_name="dennis"
greeting="hello, "$my_name" !"
greeting_1="hello, ${my_name} !"
echo $greeting  $greeting_1

greeting_2='hello, '$my_name' !'
echo $greeting_2

# Check character position from string
long_string="this is a long string"
echo `expr index "${long_string}" is`

# Define array
defined_array=("1" "2" "3")
defined_array[3]="4"
# Get specified index value
echo ${defined_array[3]}
# Get all value
echo ${defined_array[*]}
# Get array length
echo ${#defined_array[*]}
# Get element length
echo ${#defined_array[3]}

# Key-value array
declare -A site
site["a"]="1"
site["b"]="2"
site["c"]="3"
echo "keys are ${!site[*]}"
echo "values are ${site[*]}"

# How to transfer parameters into bash file
# $1 $# $* $@
echo "get first parameter: $1"
echo "get parameters' lenght: $#"

echo "-- \$* demo ---"
for i in "$*"; do
    echo $i
done

echo "-- \$@ demo ---"
for i in "$@"; do
    echo $i
done