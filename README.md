File Pemission Checker

This project provides a Bash script (permissions_checker.sh) that allows users to check the read, write, and execute permissions for files. It takes a list of file paths as input and outputs the permissions for the owner, group, and others in a clear, human-readable format.
Features

    Checks read, write, and execute permissions for the owner, group, and others.
    Handles multiple files at once.
    Displays whether the file has the required permissions (e.g., "Read: Yes, Write: No, Execute: Yes").
    Handles non-existent files gracefully.

Prerequisites

    A Unix-like environment (Linux, macOS, etc.)
    Bash shell

Installation

    Clone this repository to your local machine:

git clone https://github.com/yourusername/permissions-checker.git

Navigate to the project directory:

cd permissions-checker

Make the script executable:

    chmod +x permissions_checker.sh

Usage

    Run the script:

./permissions_checker.sh

You will be prompted to enter one or more file paths (separate multiple files with spaces). Example:

Please enter the file paths (separate multiple files with spaces):
File(s): file1.txt file2.txt

The script will output the file permissions for each file entered:

File: file1.txt
Owner: Read: Yes, Write: Yes, Execute: No
Group: Read: Yes, Write: No, Execute: Yes
Others: Read: Yes, Write: No, Execute: Yes
