function create_new_user()
{
    read -p "enter Username:" username
    
    # check if the user already exists 
    if id $username; then
        echo "$username Already Exists"
        return 1
    fi 
    read -p "Do you want to specify a home directory for user? (y/n)" set_home_directory

    if [[ "$set_home_directory" == "y" ]]; then
        read -p "enter the home directory (default: /home/$username):" home_dir
        if [ -z "$home_dir" ]; then
            home_dir= "/home/$username"
        fi
        home_flag="-d $home_dir"
    else
        home_flag="-m"
    fi

    read -p "Do you want to specify a default shell for user? (y/n)" set_shell

    if [[ "$set_shell" == "y" ]]; then
        read -p "enter the shell (default: /bin/bash):" shell
        shell_flag="-s $shell"
    else
        shell_flag="-s /bin/bash"
    fi

    read -p "Do you want to specify group for user? (y/n)" set_group

    if [[ "$set_group" == "y" ]]; then
        read -p "enter the shell (default: /bin/bash):" group
        group_flag="-g $group"
    else
        group_flag=""
    fi

    sudo useradd $home_flag $shell_flag $group_flag "$username"

    if [ $? -eq 0 ]; then
        echo "User '$username' is created Successfully"
        echo "  Home Directory: ${home_dir:-/home/$username}"
        echo "  Shell: ${shell:-/bin/bash}"
        echo "  Group: ${group:-default}"
    else
        echo "Error: Failed to create user '$username'."
    fi

    read -p "Do you want to specify password for user? (y/n)" set_pass
    if [[ "$set_pass" == "y" ]]; then
        sudo passwd "$username"
    fi

}