#!/bin/bash

# Function to provide help for backing up a directory
function backup_directory_help() {
    echo "----------------------------------------------"
    echo "           🛠️  Help: Backup a Directory"
    echo "----------------------------------------------"
    echo "This option allows you to backup a specified directory."
    echo "Usage:"
    echo "  You will be prompted to enter the directory to backup and the destination."
    echo "  The script will create a compressed archive (tar.gz) of the specified directory."
    echo ""
    echo "Commands used:"
    echo "  - tar -czf <backup_file> <directory>: Creates a compressed tarball of the directory."
    echo ""
    echo "Example Usage:"
    echo "  - Backup the '/home/john' directory to '/backups':"
    echo "      tar -czf /backups/john_backup.tar.gz /home/john"
    echo ""
    echo "Make sure you have the appropriate write permissions to the destination directory."
    echo "----------------------------------------------"
}
