#!/bin/bash

# colors
BLUE='\e[1;34m'
GREEN='\e[1;32m'
NC='\e[0m'

echo -e "${BLUE}[*] Checking the cloud for updates...${NC}"

cd "$(dirname "$0")" || exit 1
git restore .
git pull
chmod +x install.sh update.sh
echo ""
echo -e "${GREEN}[*] Update downloaded! Launching setup...${NC}"
echo ""

./install.sh