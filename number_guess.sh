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

if ! [[ "$USERS_GUESS" =~ ^[0-9]+$ ]]; 
  then echo "That is not an integer, guess again:"
  read USERS_GUESS
  NUMBER_GUESS
elif [[ "$USERS_GUESS" -gt "$RAND_INT" ]];
  then echo "It's lower than that, guess again:"
  read USERS_GUESS
  NUMBER_GUESS
elif [[ "$USERS_GUESS" -lt "$RAND_INT" ]];
  then echo "It's higher than that, guess again:"
  read USERS_GUESS
  NUMBER_GUESS
elif  [[ "$USERS_GUESS" -eq "$RAND_INT" ]];
  then echo "You guessed it in <number_of_guesses> tries. The secret number was $RAND_INT. Nice job!"
fi
}

NUMBER_GUESS

#If that username has been used before, it should print Welcome back, 
#<username>! You have played <games_played> games, and your best game 
#took <best_game> guesses., with <username> being a users name from the database,
# <games_played> being the total number of games that user has played, 
#and <best_game> being the fewest number of guesses it took that user to win 
# the game


# The next line printed should be Guess the secret number between 1 and 1000: and input from the user should be read
