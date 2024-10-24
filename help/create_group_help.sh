#!/bin/bash

# Function to provide help for creating a new group
function create_group_help() {
    echo "----------------------------------------------"
    echo "           🛠️  Help: Create a New Group"
    echo "----------------------------------------------"
    echo "This option allows you to create a new group on the system."
    echo "Usage:"
    echo "  You will be prompted to enter the name of the group to create."
    echo "  The script will attempt to create the group."
    echo ""
    echo "Commands used:"
    echo "  - groupadd <groupname>: This command is used to add a new group."
    echo ""
    echo "Example Usage:"
    echo "  - Create a new group named 'developers':"
    echo "      sudo groupadd developers"
    echo ""
    echo "Make sure you have root or sudo privileges before running this command."
    echo "----------------------------------------------"
}
