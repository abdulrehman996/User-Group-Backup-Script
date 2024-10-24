function remove_user_from_group() {
    read -p "Enter the username: " username
    read -p "Enter the group to remove the user from: " group_name
    
    # Check if the user exists
    if id "$username" &>/dev/null; then
        # Check if the group exists
        if getent group "$group_name" >/dev/null; then
            sudo gpasswd -d "$username" "$group_name"
            if [ $? -eq 0 ]; then
                echo "User '$username' has been successfully removed from group '$group_name'."
            else
                echo "Error: Failed to remove user '$username' from group '$group_name'."
            fi
        else
            echo "Error: Group '$group_name' does not exist."
        fi
    else
        echo "Error: User '$username' does not exist."
    fi
}
