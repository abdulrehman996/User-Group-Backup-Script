function delete_user() {
    read -p "Enter the username to delete: " username
    
    # Check if the user exists
    if id "$username" &>/dev/null; then
        # Delete the user
        sudo userdel -r "$username"
        if [ $? -eq 0 ]; then
            echo "User '$username' has been successfully deleted, including their home directory."
        else
            echo "Error: Failed to delete user '$username'."
        fi
    else
        echo "Error: User '$username' does not exist."
    fi
}
