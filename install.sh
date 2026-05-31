#!/bin/bash

# colors
RED='\e[1;31m'
GREEN='\e[1;32m'
NC='\e[0m'

clear
echo -e "${RED}--- Evil Eye Banner Setup ---${NC}"

# Install the necessary packages automatically
echo -e "${GREEN}[*] Installing cowsay, figlet, and lolcat. This might take a minute...${NC}"
pkg install cowsay figlet ruby -y
gem install lolcat
# get custom names
echo ""
echo -n "What is your custom banner name? : \c"
read BANNER_NAME
echo -n "What is your personal name? : \c"
read USER_NAME
#build the script
echo "#!/bin/bash" > evil-eye.sh
echo "clear" >> evil-eye.sh
echo "cowsay -f eyes '$USER_NAME' | lolcat" >> evil-eye.sh
echo "figlet '$BANNER_NAME' | lolcat" >> evil-eye.sh
echo "echo ''" >> evil-eye.sh

chmod +x evil-eye.sh

touch ~/.bashrc
sed -i '/evil-eye/d' ~/.bashrc
sed -i '/PS1=/d' ~/.bashrc

echo "~/evil-eye-banner/evil-eye.sh" >> ~/.bashrc
echo "PS1='\[\e[1;31m\]>>>\[\e[0m\] '" >> ~/.bashrc

echo ""
echo -e "${GREEN}Setup complete! Restart Termux to see your classic animated eyes.${NC}"