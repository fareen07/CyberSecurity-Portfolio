#!/bin/bash

echo "what is your age"

read AGE

if [ "$AGE" -ge 18 ]

then

echo "you are an adult"

else

echo "you are under 18"

fi
