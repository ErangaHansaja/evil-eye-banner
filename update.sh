#!/bin/bash

# Define colors for our update messages
BLUE='\e[1;34m'
GREEN='\e[1;32m'
NC='\e[0m'

echo -e "${BLUE}[*] Checking the cloud for updates...${NC}"

# 1. Navigate to the project folder (just in case you run this from somewhere else)
cd ~/evil-eye-banner || { echo "Folder not found!"; exit 1; }

# 2. Tell the Git time machine to pull down the newest code from GitHub
git pull

# 3. Make sure the scripts still have permission to run
chmod +x evil-eye.sh install.sh update.sh

echo ""
echo -e "${GREEN}[*] Update complete, Your Banner is fully synced!${NC}"