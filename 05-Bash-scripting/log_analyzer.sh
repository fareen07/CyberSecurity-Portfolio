#!/bin/bash
LOGFILE="sample.log"

print_header()
{
echo "============="
echo " Linux log  analysis report"
echo "==============="
}

print_header

if [ ! -f "$LOGFILE" ]
then
echo " Error: $LOGFILE not found"
exit 1
fi

NAME=$(whoami)
DATE=$(date)



FAILED=$(grep "Failed" -c "$LOGFILE")
SUCESS=$(grep "successful" -c "$LOGFILE")

echo 

echo "Analyst $NAME"
echo "Todays date $DATE"
echo "Logfile $LOGFILE"
echo " Failed Logins= $FAILED"
echo " Succesful logins=$SUCESS"

echo 

echo "status"

if [ "$FAILED" -eq 0 ]

then 

echo "No Failed login attempts"

elif [ "$FAILED" -le 5 ]

then 


echo " Some Failed attempts"

else

echo "Possible brute force attack"

fi 



