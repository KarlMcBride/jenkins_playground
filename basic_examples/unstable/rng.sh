#!/bin/sh

pass_limit=$1

random_number=$(shuf -i1-100 -n1)

echo "random_number: $random_number"

# Raise error code if number is less than pass_limit
if [ $random_number -lt $pass_limit ]; then
    echo "Random number < $pass_limit, exiting 1"
    exit 1
fi

exit 0
