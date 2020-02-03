#!/bin/bash
#
# this script rolls a six-sided die
#

# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one

# roll the dice and display the result
echo "
Rolling...
$(( RANDOM % 6 + 1)) rolled
"
echo "
Rolling normal dice 6 times:
$((RANDOM % 6+1)), $((RANDOM % 6+1)), $((RANDOM % 6+1)), $((RANDOM % 6+1)), $((RANDOM % 6+1)), $((RANDOM % 6+1))
"
echo "
Rolling a 20 sided dice once:
$((RANDOM % 20+1))
"
