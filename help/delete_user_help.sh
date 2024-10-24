#!/bin/bash

# Function to provide help for deleting an existing user
function delete_user_help() {
    echo "----------------------------------------------"
    echo "           🛠️  Help: Delete an Existing User"
    echo "----------------------------------------------"
    echo "This option allows you to delete an existing user from the system."
    echo "Usage:"
    echo "  You will be prompted to enter the username of the user to delete."
    echo "  The script will attempt to remove the user and associated data."
    echo ""
    echo "Commands used:"
    echo "  - userdel <username>: This command is used to delete a user."
    echo ""
    echo "Options for userdel:"
    echo "  - -r: Remove the user’s home directory and mail spool along with the user."
    echo "  - -f: Force the removal of the user even if they are logged in."
    echo ""
    echo "Example Usage:"
    echo "  - Delete a user and leave the home directory intact:"
    echo "      sudo userdel john"
    echo ""
    echo "  - Delete a user and their home directory:"
    echo "      sudo userdel -r john"
    echo ""
    echo "Make sure you have root or sudo privileges before running this command."
    echo "----------------------------------------------"
}