#!/bin/bash

echo "============================"
echo "     Simple Pay Calculator"
echo "============================"
echo

# Ask for input
read -p "How many hours did you work? " hours
read -p "How much do you get paid per hour? " rate

# Use bc for floating point math
pay=$(echo "$hours * $rate" | bc -l)

# for environments with no "bc" command (like gitbash on Windows)
# pay=$(awk "BEGIN { printf \"%.2f\", $hours * $rate }")

# Format outputs with 2 decimal places
hoursFormatted=$(printf "%.2f" "$hours")
rateFormatted=$(printf "%.2f" "$rate")
payFormatted=$(printf "%.2f" "$pay")

echo
echo "============================"
echo " You worked $hoursFormatted hours at \$$rateFormatted per hour."
echo " Your total pay is: \$$payFormatted"
echo "============================"
