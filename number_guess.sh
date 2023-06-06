#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

FLAG=1
echo "Enter your username:"
read USERNAME
RAND_NUM=$[($RANDOM % 1000) + 1]
GAME_RESULT=$($PSQL "Select count(game_id),username,min(score) from game where username='$USERNAME' group by username")
if [[ -z $GAME_RESULT ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  echo "$GAME_RESULT" | while IFS="|" read GAME_PLAYED NAME SCORE
  do
    echo "Welcome back, $USERNAME! You have played $GAME_PLAYED games, and your best game took $SCORE guesses."
  done
fi
echo "Guess the secret number between 1 and 1000:"

NUMBER_GAME() {
  read NUMBER
  if [[ ! $NUMBER =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    NUMBER_GAME
  else
    if [[ $NUMBER > $RAND_NUM ]]
    then
      echo "It's lower than that, guess again:"
      FLAG=$[($FLAG + 1)]
      NUMBER_GAME
    elif [[ $NUMBER < $RAND_NUM ]]
    then
      echo "It's higher than that, guess again:"
      FLAG=$[($FLAG + 1)]
      NUMBER_GAME
    else
      echo "You guessed it in $FLAG tries. The secret number was $RAND_NUM. Nice job!"
      INSERTING_RESULT=$($PSQL "Insert into game(username,score) Values('$USERNAME',$FLAG)")
    fi
  fi
}

NUMBER_GAME
