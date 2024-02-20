# Directory Organizer Shell Script 

This project started as a basic practical tutorial in my Unix classes at University. As part of the course, the goal was to gain hands-on experience with bash scripting.

**Overview**

A shell script designed to organize files within a specified directory. The script performs the following tasks:

- Accepts the name of a directory as an input argument, checks if the directory exists, and creates it if not present.
- Creates two new directories inside the original directory, ensuring unique names.
- Moves all files in the original directory to the two new directories based on their names:
    - One directory contains files with names starting with letters A-L (case-insensitive).
    - The other directory contains the remaining files.
- Displays the number of files in each of the two new directories.

**Installation**

1. Clone this repository to your local machine.
2. Navigate to the working directory you have placed the script in.
3. Run the script with the following command:

```
./directory_organizer.sh [directory_name]
```

**License**
This project is licensed under the MIT License.
