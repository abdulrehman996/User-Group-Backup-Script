# 🛠️ User Management and Backup Automation System

This project provides a comprehensive shell script-based solution for managing users, groups, and automating directory backups. It includes help scripts to guide users and administrator scripts to execute various user management functions.

## 📋 Project Overview

### Main Features

- **User Management**: Create, delete, modify users, and assign them to groups.
- **Group Management**: Create and modify user groups.
- **Backup System**: Backup specified directories with a timestamped archive for easy retrieval and versioning.
- **Help System**: Detailed help scripts for guiding users through different operations.

## 📂 Project Structure

### Directory and File Breakdown

- **backup/**: 
  - `backup_directory.sh`: Script to backup a specific directory.

- **help/**: 
  - `add_user_to_group_help.sh`: Help script for adding a user to a group.
  - `backup_directory_help.sh`: Help script for backing up directories.
  - `create_group_help.sh`: Help script for creating a group.
  - `create_new_user_help.sh`: Help script for creating a new user.
  - `delete_user_help.sh`: Help script for deleting a user.
  - `modify_user_help.sh`: Help script for modifying user information.
  - `remove_user_from_group_help.sh`: Help script for removing a user from a group.

- **user_administrator/**:
  - `add_user_to_group.sh`: Script to add a user to a group.
  - `create_group.sh`: Script to create a new group.
  - `create_new_user.sh`: Script to create a new user.
  - `delete_user.sh`: Script to delete a user.
  - `modify_user.sh`: Script to modify user information.
  - `remove_user_from_group.sh`: Script to remove a user from a group.

- **main.sh**: Main script that ties together the user administration scripts.
- **user_help.sh**: Displays help information for user-related tasks.
- **user_menu.sh**: Displays a menu for managing user administration tasks.

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
git clone https://github.com/abdulrehman996/User-Group-Backup-Script.git
```

### Make the scripts executable:

```bash
chmod +x backup/*.sh
chmod +x help/*.sh
chmod +x user_administrator/*.sh
chmod +x main.sh user_help.sh user_menu.sh
```

### Run the User Management System:

```bash
./main.sh
```

## ⚙️ Script Functionality

### User Creation

Run the `create_new_user.sh` script to create a new user with specific home directory, shell, and group options.

### User Deletion

Use the `delete_user.sh` script to remove a user from the system, optionally removing their home directory.

### User Modification

Run the `modify_user.sh` script to modify user details such as shell, home directory, groups, and password.

### Group Management

- **Create a Group**: The `create_group.sh` script lets you create new user groups.
- **Add User to Group**: Use `add_user_to_group.sh` to assign users to existing groups.
- **Remove User from Group**: The `remove_user_from_group.sh` script allows you to remove a user from a group.

### Backup System
The `backup_directory.sh` script allows for automated directory backups with a timestamped filename for version control.


## 🔧 Example Workflows

### Creating a New User:
```bash
./user_administrator/create_new_user.sh
```

You will be prompted for the username, home directory, shell, and group details. After completion, the user will be added to the system.

### Backing up a Directory:

```bash
./backup/backup_directory.sh
```

This will prompt you for the directory to back up and the destination directory for the backup file. A timestamped `.tar.gz` file will be created.

## 📑 Help System

Each task comes with a detailed help script. To access the help system, type help in the main menu and select the corresponding help option.

```bash
source ./help/create_new_user_help.sh
```
This will display the help information for creating a new user, guiding you through the steps.
