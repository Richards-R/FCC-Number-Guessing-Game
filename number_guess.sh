#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=random_number_guess -t --no-align -c"
HIGH=1000
RAND_INT=$((1 + $RANDOM % $HIGH))
echo $RAND_INT

#prompt the user for a username with Enter your username
#take a username as input. allow usernames that are 22 characters

echo Enter your username:
read USERNAME

USERID=$($PSQL "SELECT user_id FROM users WHERE '$USERNAME' = username")
GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE '$USERNAME' = username")
GUESS_RECORD=$($PSQL "SELECT guess_record FROM users WHERE '$USERNAME' = username")
GUESS_COUNT=1
if [[ -z $USERID ]]
then
  NEW_USER=$($PSQL "INSERT INTO users(username) VALUES ('$USERNAME')")
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
else
  echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

echo -e "\nGuess the secret number between 1 and 1000:"
read USERS_GUESS
NUMBER_GUESS() {
echo "GC: $GUESS_COUNT"
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
fi
}

NUMBER_GUESS

