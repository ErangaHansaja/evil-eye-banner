#!/bin/bash

# Clear the screen first
clear

RED='\e[1;31m'
NC='\e[0m' 

# Read the name from the hidden file we created during install
# If the file doesn't exist for some reason, it defaults to Grand Regent
if [ -f ~/.banner_name ]; then
    MY_NAME=$(cat ~/.banner_name)
else
    MY_NAME="Grand Regent"
fi

# Print the Braille ASCII Art (I removed the blank lines so it fits better!)
echo -e "${RED}"
echo "⠀⠀⠀⣰⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣆⠀⠀⠀"
echo "⠀⠀⣼⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣧⠀⠀"
echo "⠀⢰⣿⣿⡟⠈⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⠁⢻⣿⣿⡆⠀"
echo "⠀⠘⣿⣿⡇⠀⠸⡟⢿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡿⢻⠇⠀⢸⣿⣿⠃⠀"
echo "⠀⠀⠈⠙⠻⠦⢤⣄⣀⣙⣷⣤⡀⠀⠀⠀⠀⢀⣤⣾⣋⣀⣠⡤⠴⠟⠋⠁⠀⠀"
echo -e "${NC}"

# Print the custom name
echo -e "${RED}     Access Granted, ${MY_NAME}.${NC}"
echo ""