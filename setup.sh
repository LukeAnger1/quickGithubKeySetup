#!/bin/bash

# Prompt user for GitHub email and name
read -p "Enter your GitHub email: " email
read -p "Enter your Git name: " name
read -p "Enter the file name for the SSH key (default: id_rsa): " key_name

# Set default value for key name if not provided
key_name=${key_name:-id_rsa}

# Generate new SSH key
ssh-keygen -t rsa -b 4096 -C "$email" -f ~/.ssh/$key_name -N ""

# Print the generated SSH key
echo "Here is your new SSH public key:"
cat ~/.ssh/$key_name.pub

# Set Git name and email
git config --global user.name "$name"
git config --global user.email "$email"

echo "Git name and email have been set."
