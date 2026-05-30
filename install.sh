#!/bin/bash

# Give the script permission to run
chmod +x evil-eye.sh

# Remove any previous evil eye setups from the bashrc to avoid duplicates
sed -i '/evil-eye/d' ~/.bashrc
sed -i '/PS1=/d' ~/.bashrc

# 1. Add our evil eye script to the very end of the Termux startup file (.bashrc)
echo "~/evil-eye-banner/evil-eye.sh" >> ~/.bashrc

# 2. Change the terminal prompt to a glowing red ">>> " 
echo "PS1='\[\e[1;31m\]>>>\[\e[0m\] '" >> ~/.bashrc

echo "Setup complete, Lunar ping! Restart your Termux app to see the magic."