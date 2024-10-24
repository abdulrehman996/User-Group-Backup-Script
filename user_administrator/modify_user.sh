#!/bin/bash

function modify_user() {
    read -p "Enter the username to modify: " username
    
    # Check if the user exists
    if id "$username" &>/dev/null; then
        # Change the home directory
        read -p "Do you want to change the home directory? (y/n) " change_home
        if [[ "$change_home" == "y" ]]; then
            read -p "Enter the new home directory: " new_home_dir
            sudo usermod -d "$new_home_dir" -m "$username"
        fi
        
        # Change the shell
        read -p "Do you want to change the shell? (y/n) " change_shell
        if [[ "$change_shell" == "y" ]]; then
            read -p "Enter the new shell (e.g., /bin/bash): " new_shell
            sudo usermod -s "$new_shell" "$username"
        fi
        
        # Change the primary group
        read -p "Do you want to change the primary group? (y/n) " change_group
        if [[ "$change_group" == "y" ]]; then
            read -p "Enter the new primary group: " new_group
            sudo usermod -g "$new_group" "$username"
        fi
        
        # Add the user to additional groups
        read -p "Do you want to add the user to additional groups? (y/n) " add_groups
        if [[ "$add_groups" == "y" ]]; then
            read -p "Enter the groups (comma-separated, e.g., sudo,developers): " groups
            sudo usermod -aG "$groups" "$username"
        fi
        
        # Change the user's password
        read -p "Do you want to change the user's password? (y/n) " change_password
        if [[ "$change_password" == "y" ]]; then
            sudo passwd "$username"
        fi


        echo "User '$username' has been modified."
    else
        echo "Error: User '$username' does not exist."
    fi
}
