#!/bin/bash

# Function to provide help for removing a user from a group
function remove_user_from_group_help() {
    echo "----------------------------------------------"
    echo "           🛠️  Help: Remove User from a Group"
    echo "----------------------------------------------"
    echo "This option allows you to remove an existing user from an existing group."
    echo "Usage:"
    echo "  You will be prompted to enter the username and the group name."
    echo "  The script will attempt to remove the user from the specified group."
    echo ""
    echo "Commands used:"
    echo "  - gpasswd -d <username> <groupname>: This command removes the user from the specified group."
    echo ""
    echo "Example Usage:"
    echo "  - Remove user 'john' from group 'developers':"
    echo "      sudo gpasswd -d john developers"
    echo ""
    echo "Make sure you have root or sudo privileges before running this command."
    echo "----------------------------------------------"
}
