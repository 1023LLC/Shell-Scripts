#!/bin/bash

echo "This is a password generator"
echo "Please enter the length of the password: "
read PASS_LENGTH

echo "How many passwords do you want to generate? "
read NUM_PASSWORDS

echo "Generating $NUM_PASSWORDS passwords of length $PASS_LENGTH..."

for ((i=1; i<=NUM_PASSWORDS; i++))
do
    # Generate a random password
    password=$(openssl rand -base64 48 | tr -dc 'a-zA-Z0-9!@#$%^&*()-_=+[]{}<>.,:;? ' | head -c "$PASS_LENGTH")
    
    echo "Password $i: $password"
done
