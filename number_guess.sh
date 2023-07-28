#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=<database_name> -t --no-align -c"
HIGH=1000
RAND_INT=$((1 + $RANDOM % $HIGH))
#echo $RAND_INT

#prompt the user for a username with Enter your username
#take a username as input. allow usernames that are 22 characters

#If that username has been used before, it should print Welcome back, 
#<username>! You have played <games_played> games, and your best game 
#took <best_game> guesses., with <username> being a users name from the database,
# <games_played> being the total number of games that user has played, 
#and <best_game> being the fewest number of guesses it took that user to win 
# the game

#If the username has not been used before, you should print Welcome, 
#<username>! It looks like this is your first time here.


# The next line printed should be Guess the secret number between 1 and 1000: and input from the user should be read
