#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

prompt="Enter guess password : "
read -p "$prompt" password
referenceString="password"

if [ "$password" = "$referenceString" ];
then
  echo "The password is correct!"
else
  echo "Tha password is wrong!"
  echo ""
  echo "You have 5 more chance to guess password:"
  read -p "$prompt" password
  if [ "$password" = "$referenceString" ];
  then
    echo "The password is correct!"
  else
    echo "Tha password is wrong!"
    echo ""
    echo "You have 4 more chance to guess password:"
    read -p "$prompt" password
    if [ "$password" = "$referenceString" ];
    then
      echo "The password is correct!"
    else
      echo "Tha password is wrong!"
      echo ""
      echo "You have 3 more chance to guess password:"
      read -p "$prompt" password
      if [ "$password" = "$referenceString" ];
      then
        echo "The password is correct!"
      else
        echo "Tha password is wrong!"
        echo ""
        echo "You have 2 more chance to guess password:"
        read -p "$prompt" password
        if [ "$password" = "$referenceString" ];
        then
          echo "The password is correct!"
        else
          echo "Tha password is wrong!"
          echo ""
          echo "You have 1 more chance to guess password:"
          read -p "$prompt" password
          if [ "$password" = "$referenceString" ];
          then
            echo "The password is correct!"
          else
            echo "Tha password is wrong!"
            echo ""
            echo "You have 0 more chance to guess password:"
fi
fi
fi
fi
fi
fi
