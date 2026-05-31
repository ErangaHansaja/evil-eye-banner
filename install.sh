#!/bin/bash

# Define colors for our installer
RED='\e[1;31m'
NC='\e[0m'

clear
echo -e "${RED}--- Evil Eye Setup ---${NC}"

# The 'read' command pauses the script and waits for you to type something
echo -n "What is your custom banner name? : "
read USER_NAME

# Save that name into a hidden file on the phone
echo "$USER_NAME" > ~/.banner_name

# Give the scripts permission to run
chmod +x evil-eye.sh update.sh

# Create the bashrc file if it doesn't exist yet
touch ~/.bashrc

# Remove any previous evil eye setups from the bashrc to avoid duplicates
sed -i '/evil-eye/d' ~/.bashrc
sed -i '/PS1=/d' ~/.bashrc

# 1. Add our evil eye script to the Termux startup file
echo "~/evil-eye-banner/evil-eye.sh" >> ~/.bashrc

# 2. Change the terminal prompt to a glowing red ">>> " 
echo "PS1='\[\e[1;31m\]>>>\[\e[0m\] '" >> ~/.bashrc

echo ""
echo -e "${RED}Setup complete! Your name has been saved.${NC}"
echo "Restart your Termux app to see the magic."