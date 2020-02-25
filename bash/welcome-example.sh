#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
Hostname=$(hostname)
title="Overlord"
myname=$(users)
Day=$(date +%A)
Date=$(date +%X)

if [ $Day = Monday ];
  then title=Blasting
elif [ $Day = Tuesday ];
  then title=Trouble
elif [ $Day = Wednessday ];
  then title=wonderful
elif [ $Day = Thursday ];
  then title=Threatening
elif [ $Day = Friday ];
  then title=Fry-Day
elif [ $Day = Saturday ];
  then title=Set-your-Day
elif [ $Day = Sunday ];
  then title=Funday
fi

Variable=$(cat <<EOF
Welcome to planet $Hostname, "$title, $myname!"
It is $title $Day at $Date
EOF
)
###############
# Main        #
###############

cat <<EOF
$(cowsay "$Variable")
EOF
