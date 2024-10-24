#!/bin/bash

function backup_directory() {
    read -p "Enter the directory to backup: " dir_to_backup
    read -p "Enter the destination directory for the backup: " backup_dest_dir
    
    # Check if the backup destination directory exists
    if [ ! -d "$backup_dest_dir" ]; then
        echo "Error: Backup destination directory does not exist."
        return 1
    fi

    # Check if the directory to backup exists
    if [ -d "$dir_to_backup" ]; then
        # Create a timestamp
        timestamp=$(date +"%Y%m%d_%H%M%S")
        
        # Generate backup file name with timestamp
        backup_file="${backup_dest_dir}/backup_$(basename "$dir_to_backup")_${timestamp}.tar.gz"
        
        # Create the backup
        tar -czf "$backup_file" "$dir_to_backup"
        
        if [ $? -eq 0 ]; then
            echo "Directory '$dir_to_backup' has been successfully backed up to '$backup_file'."
        else
            echo "Error: Failed to backup directory '$dir_to_backup'."
        fi
    else
        echo "Error: Directory '$dir_to_backup' does not exist."
    fi
}
