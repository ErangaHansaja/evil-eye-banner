#!/bin/bash

cd "$(dirname "$0")" || exit 1

# Import the shared colors
source colors.sh

echo -e "${BLUE}[*] Checking the cloud for updates...${NC}"

cd "$(dirname "$0")" || exit 1
git restore .
git pull
chmod +x install.sh update.sh
echo ""
echo -e "${GREEN}[*] Update downloaded! Launching setup...${NC}"
echo ""

./install.sh