#!/bin/bash

echo "How many failed login attempts were found?"

read FAILED

if [ "$FAILED" -eq 0 ]

then 
echo "No failed attemps detected"

else 

echo "Warning! Failed login attempts detected"

fi
