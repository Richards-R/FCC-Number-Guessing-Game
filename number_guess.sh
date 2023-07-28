#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=random_number_guess -t --no-align -c"
RAND_INT=$((1 + $RANDOM % 1000))

echo Enter your username:
read USERNAME

USERID=$($PSQL "SELECT user_id FROM users WHERE '$USERNAME' = username")
GUESS_COUNT=1
if [[ -z $USERID ]]
then
  NEW_USER=$($PSQL "INSERT INTO users(username) VALUES ('$USERNAME')")
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
else
  GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE '$USERNAME' = username")
  BEST_GAME=$($PSQL "SELECT guess_record FROM users WHERE '$USERNAME' = username")
  echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

echo -e "\nGuess the secret number between 1 and 1000:"
read USERS_GUESS
NUMBER_GUESS() {
if ! [[ "$USERS_GUESS" =~ ^[0-9]+$ ]]; 
  then echo "That is not an integer, guess again:"
   ((GUESS_COUNT=GUESS_COUNT+1))
  read USERS_GUESS
  NUMBER_GUESS
elif [[ "$USERS_GUESS" -gt "$RAND_INT" ]];
  then echo "It's lower than that, guess again:"
   ((GUESS_COUNT=GUESS_COUNT+1))
  read USERS_GUESS
  NUMBER_GUESS
elif [[ "$USERS_GUESS" -lt "$RAND_INT" ]];
  then echo "It's higher than that, guess again:"
   ((GUESS_COUNT=GUESS_COUNT+1))
  read USERS_GUESS
  NUMBER_GUESS
elif  [[ "$USERS_GUESS" -eq "$RAND_INT" ]];
  then 
  echo "You guessed it in $GUESS_COUNT tries. The secret number was $RAND_INT. Nice job!"
  GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE '$USERNAME' = username")
  ((GAMES_PLAYED=GAMES_PLAYED+1))
  UPDATE_GAMES_PLAYED=$($PSQL "UPDATE users SET games_played ='$GAMES_PLAYED' WHERE '$USERNAME' = username")
  GUESS_RECORD=$($PSQL "SELECT guess_record FROM users WHERE '$USERNAME' = username")
  if [[ "$GUESS_COUNT" -lt "$GUESS_RECORD" ]];
    then 
    UPDATE_GUESS_RECORD=$($PSQL "UPDATE users SET guess_record = '$GUESS_COUNT' WHERE '$USERNAME' = username")
  fi
fi
}
NUMBER_GUESS

