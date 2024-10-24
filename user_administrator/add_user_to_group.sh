function add_user_to_group() {
    read -p "Enter the username: " username
    read -p "Enter the group to add the user to: " group_name
    
    # Check if the user exists
    if id "$username" &>/dev/null; then
        # Check if the group exists
        if getent group "$group_name" >/dev/null; then
            sudo usermod -aG "$group_name" "$username"
            if [ $? -eq 0 ]; then
                echo "User '$username' has been successfully added to group '$group_name'."
            else
                echo "Error: Failed to add user '$username' to group '$group_name'."
            fi
        else
            echo "Error: Group '$group_name' does not exist."
        fi
    else
        echo "Error: User '$username' does not exist."
    fi
}
