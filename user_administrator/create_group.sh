function create_group() {
    read -p "Enter the group name: " group_name
    
    # Check if the group already exists
    if getent group "$group_name" >/dev/null; then
        echo "Error: Group '$group_name' already exists."
    else
        sudo groupadd "$group_name"
        if [ $? -eq 0 ]; then
            echo "Group '$group_name' has been successfully created."
        else
            echo "Error: Failed to create group '$group_name'."
        fi
    fi
}
