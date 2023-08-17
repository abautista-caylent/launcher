#!/bin/bash
clear
echo
echo
echo
cat << "EOF"

          /$$$$$$ /$$   /$$ /$$    /$$  /$$$$$$  /$$   /$$ /$$$$$$$$        /$$$$$$  /$$$$$$$$ /$$$$$$  /$$      /$$ /$$$$$$  /$$$$$$ 
         |_  $$_/| $$$ | $$| $$   | $$ /$$__  $$| $$  /$$/| $$_____/       /$$__  $$|__  $$__//$$__  $$| $$$    /$$$|_  $$_/ /$$__  $$
           | $$  | $$$$| $$| $$   | $$| $$  \ $$| $$ /$$/ | $$            | $$  \ $$   | $$  | $$  \ $$| $$$$  /$$$$  | $$  | $$  \__/
           | $$  | $$ $$ $$|  $$ / $$/| $$  | $$| $$$$$/  | $$$$$         | $$$$$$$$   | $$  | $$  | $$| $$ $$/$$ $$  | $$  | $$      
           | $$  | $$  $$$$ \  $$ $$/ | $$  | $$| $$  $$  | $$__/         | $$__  $$   | $$  | $$  | $$| $$  $$$| $$  | $$  | $$      
           | $$  | $$\  $$$  \  $$$/  | $$  | $$| $$\  $$ | $$            | $$  | $$   | $$  | $$  | $$| $$\  $ | $$  | $$  | $$    $$
          /$$$$$$| $$ \  $$   \  $/   |  $$$$$$/| $$ \  $$| $$$$$$$$      | $$  | $$   | $$  |  $$$$$$/| $$ \/  | $$ /$$$$$$|  $$$$$$/
         |______/|__/  \__/    \_/     \______/ |__/  \__/|________/      |__/  |__/   |__/   \______/ |__/     |__/|______/ \______/

EOF
echo
echo "         LOADING2 . . ."
echo
echo "         Please wait, this could take a few minutes"
echo 
echo
pwsh -Command "IEX (IWR 'https://raw.githubusercontent.com/redcanaryco/invoke-atomicredteam/master/install-atomicredteam.ps1' -UseBasicParsing); Install-AtomicRedTeam -getAtomics" -Force
echo "Script completed" > /tmp/install_remote_d.log
echo
echo
echo
echo "     USER ACTION REQUIRED:"
echo
echo "     Please execute:                Import-Module '/AtomicRedTeam/invoke-atomicredteam/Invoke-AtomicRedTeam.psd1' -Force"
echo
echo
pwsh

