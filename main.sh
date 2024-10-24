#Help Scripts
source ./user_help.sh
source ./help/add_user_to_group_help.sh
source ./help/backup_directory_help.sh
source ./help/create_group_help.sh
source ./help/create_new_user_help.sh
source ./help/delete_user_help.sh
source ./help/modify_user_help.sh
source ./help/remove_user_from_group_help.sh

#user administrator Scripts
source ./user_menu.sh
source ./user_administrator/add_user_to_group.sh
source ./user_administrator/create_group.sh
source ./user_administrator/create_new_user.sh
source ./user_administrator/delete_user.sh
source ./user_administrator/modify_user.sh
source ./user_administrator/remove_user_from_group.sh

# Directory backup Scripts
source ./backup/backup_directory.sh


while true; do

    display_menu
    read -p "enter choice: " choice

    case ${choice} in
        0) exit
        ;;
        1) clear && create_new_user && read -n 1 -s -r -p "Press any key to continue..." && clear
        ;;
        2) clear && delete_user && read -n 1 -s -r -p "Press any key to continue..." && clear
        ;;
        3) clear && modify_user && read -n 1 -s -r -p "Press any key to continue..." && clear
        ;;
        4) clear && create_group && read -n 1 -s -r -p "Press any key to continue..." && clear
        ;;
        5) clear && add_user_to_group && read -n 1 -s -r -p "Press any key to continue..." && clear
        ;;
        6) clear && remove_user_from_group && read -n 1 -s -r -p "Press any key to continue..." && clear
        ;;
        7) clear && backup_directory && read -n 1 -s -r -p "Press any key to continue..." && clear
        ;;
        help) clear
        display_help 
        read -p "enter Help Choice: " help_choice
        case ${help_choice} in
            1) clear && create_new_user_help && read -n 1 -s -r -p "Press any key to continue..." && clear
            ;;
            2) clear && delete_user_help && read -n 1 -s -r -p "Press any key to continue..." && clear
            ;;
            3) clear && modify_user_help && read -n 1 -s -r -p "Press any key to continue..." && clear
            ;;
            4) clear && create_group_help && read -n 1 -s -r -p "Press any key to continue..." && clear
            ;;
            5) clear && add_user_to_group_help && read -n 1 -s -r -p "Press any key to continue..." && clear
            ;;
            6) clear && remove_user_from_group_help && read -n 1 -s -r -p "Press any key to continue..." && clear
            ;;
            7) clear && backup_directory_help && read -n 1 -s -r -p "Press any key to continue..." && clear
            ;;
            
        esac
        ;;
    esac
   
done