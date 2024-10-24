#!/bin/bash

# Function to provide help for adding a user to an existing group
function add_user_to_group_help() {
    echo "----------------------------------------------"
    echo "           🛠️  Help: Add User to an Existing Group"
    echo "----------------------------------------------"
    echo "This option allows you to add an existing user to an existing group."
    echo "Usage:"
    echo "  You will be prompted to enter the username and the group name."
    echo "  The script will attempt to add the user to the specified group."
    echo ""
    echo "Commands used:"
    echo "  - usermod -aG <groupname> <username>: Adds the user to the specified group."
    echo ""
    echo "Example Usage:"
    echo "  - Add user 'john' to group 'developers':"
    echo "      sudo usermod -aG developers john"
    echo ""
    echo "  - You can check the groups a user belongs to using the groups command:"
    echo "      groups john"
    echo ""
    echo "Make sure you have root or sudo privileges before running this command."
    echo "----------------------------------------------"
}
