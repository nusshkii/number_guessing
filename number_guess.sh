#!/bin/bash

# Constants
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
SECRET_NUMBER=$((RANDOM % 1000 + 1))

# Function to check if username exists
check_username() {
    local username="$1"
    local query="SELECT COUNT(*) FROM users WHERE username = '$username';"
    local result=$($PSQL "$query")
    echo "$result"
}

# Function to fetch user info
fetch_user_info() {
    local username="$1"
    local query="SELECT games_played, best_game FROM users WHERE username = '$username';"
    local result=$($PSQL "$query")
    echo "$result"
}

# Function to update user info
update_user_info() {
    local username="$1"
    local games_played="$2"
    local best_game="$3"
    local query="INSERT INTO users (username, games_played, best_game) VALUES ('$username', $games_played, $best_game)
                 ON CONFLICT (username) DO UPDATE SET games_played = EXCLUDED.games_played, best_game = EXCLUDED.best_game;"
    $PSQL "$query"
}

# Function to handle game logic
play_game() {
    local username="$1"
    local games_played=0
    local best_game=0

    # Check if user exists
    local existing_user=$(check_username "$username")
    if [[ $existing_user -eq 1 ]]; then
        # Fetch existing user info
        local user_info=$(fetch_user_info "$username")
        IFS='|' read -r games_played best_game <<< "$user_info"
        echo "Welcome back, $username! You have played $games_played games, and your best game took $best_game guesses."
    else
        echo "Welcome, $username! It looks like this is your first time here."
    fi

    # Game loop
    local guess
    local number_of_guesses=0
    while true; do
        read -p "Guess the secret number between 1 and 1000: " guess

        # Validate input
        if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
            echo "That is not an integer, guess again:"
            continue
        fi

        ((number_of_guesses++))

        if [[ $guess -eq $SECRET_NUMBER ]]; then
            echo "You guessed it in $number_of_guesses tries. The secret number was $SECRET_NUMBER. Nice job!"
            break
        elif [[ $guess -lt $SECRET_NUMBER ]]; then
            echo "It's higher than that, guess again:"
        else
            echo "It's lower than that, guess again:"
        fi
    done

    # Update user info
    update_user_info "$username" "$((games_played + 1))" "$number_of_guesses"
}

# Main script logic
echo "Enter your username:"
read username

# Limit username length to 22 characters
username="${username:0:22}"

play_game "$username"
