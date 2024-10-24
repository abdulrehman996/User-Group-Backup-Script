# 🛠️ User Management and Backup Automation System

This project provides a comprehensive shell script-based solution for managing users, groups, and automating directory backups. It includes help scripts to guide users and administrator scripts to execute various user management functions.

## 📋 Project Overview

### Main Features

- **User Management**: Create, delete, modify users, and assign them to groups.
- **Group Management**: Create and modify user groups.
- **Backup System**: Backup specified directories with a timestamped archive for easy retrieval and versioning.
- **Help System**: Detailed help scripts for guiding users through different operations.

## 📂 Project Structure
\├── backup
\│   └── backup_directory.sh
\├── help
\│   ├── add_user_to_group_help.sh
│   ├── backup_directory_help.sh
│   ├── create_group_help.sh
│   ├── create_new_user_help.sh
│   ├── delete_user_help.sh
│   ├── modify_user_help.sh
│   └── remove_user_from_group_help.sh
├── user_administrator
│   ├── add_user_to_group.sh
│   ├── create_group.sh
│   ├── create_new_user.sh
│   ├── delete_user.sh
│   ├── modify_user.sh
│   └── remove_user_from_group.sh
├── main.sh
├── user_help.sh
└── user_menu.sh

- **backup/**: Contains scripts for handling directory backups.
- **help/**: Contains help scripts for each of the management tasks.
- **user_administrator/**: Contains core scripts for managing users and groups.
- **main.sh**: The main entry point for the project.
- **user_help.sh**: Sources all the help scripts.
- **user_menu.sh**: Contains the menu structure for the system.

## 🛠️ System Usage

The system starts with the `main.sh` script. It provides an interactive menu-based system to manage user-related tasks. From this menu, you can choose various options for creating users, groups, modifying user attributes, and more.

### Main Menu Options

- **Press 1** to Create a New User.
- **Press 2** to Delete an Existing User.
- **Press 3** to Modify an Existing User.
- **Press 4** to Create a New Group.
- **Press 5** to Add a User to an Existing Group.
- **Press 6** to Remove a User from a Group.
- **Press 7** to Backup a Directory.
- **Type "help"** to access help scripts.
- **Press 0** to Exit the User Management System.

### Help Menu Options

- **Press 1** for help on creating a new user.
- **Press 2** for help on deleting a user.
- **Press 3** for help on modifying a user.
- **Press 4** for help on creating a group.
- **Press 5** for help on adding a user to a group.
- **Press 6** for help on removing a user from a group.
- **Press 7** for help on backing up a directory.

## 🧑‍💻 How to Run

### Clone the Repository

```bash
git clone https://github.com/yourusername/yourrepository.git
bash```
