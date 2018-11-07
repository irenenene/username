#! /bin/bash
# username.sh
# Irene Liu
echo "This program asks for a valid username."
echo "The only characters that can be used are lower case letters, digits, and the underscore character."
echo "It must start with a lower case letter."
echo "It must contain at least three but no more than 12 characters as well."
echo "Please enter a username:"
read USERNAME
while echo $USERNAME | egrep -v "^[a-z]\w{2,11}$" > /dev/null 2>&1
do
	echo "Invalid input. Try again."
	echo "Enter a username: "
	read USERNAME
done
echo "Thank you"

