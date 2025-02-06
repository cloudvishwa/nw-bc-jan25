#!/bin/bash

# Define color codes
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
NC='\033[0m' # No color

clear  # Clear the screen before execution

echo -e "${CYAN}****************************************${NC}"
echo -e "${YELLOW}      🌟 WELCOME TO MY SCRIPT 🌟       ${NC}"
echo -e "${CYAN}****************************************${NC}"

echo -e "${GREEN}✨ Creating file: file1.txt...${NC}"
touch file1.txt
sleep 1

echo -e "${CYAN}----------------------------------------${NC}"
echo -e "${YELLOW}💡 Writing to file1.txt...${NC}"
echo "this is a testing file" > file1.txt
sleep 1

echo -e "${CYAN}----------------------------------------${NC}"
echo -e "${GREEN}📄 File Content:${NC}"
echo -e "${RED}----------------------------------------${NC}"
cat file1.txt
echo -e "${RED}----------------------------------------${NC}"

echo -e "${CYAN}✅ Script Execution Completed! ✅${NC}"
echo -e "${CYAN}****************************************${NC}"
