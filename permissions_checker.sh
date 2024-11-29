#!/bin/bash

# Function to check individual file permissions
check_permissions() {
    local file="$1" #local variable and $1 specifies the First argument

    # Check if the file exists
    if [[ ! -e "$file" ]]; then #check if the file exists or not
        echo "File '$file' does not exist."
        return
    fi

    # Check if the file has read, write, and execute permissions
    echo "File: $file"

    # Owner permissions
    if [[ -r "$file" ]]; then
        owner_read="Yes"
    else
        owner_read="No"
    fi
    if [[ -w "$file" ]]; then
        owner_write="Yes"
    else
        owner_write="No"
    fi
    if [[ -x "$file" ]]; then
        owner_execute="Yes"
    else
        owner_execute="No"
    fi

    # Group permissions (checking group permissions)
    if [[ -r "$file" && $(stat -c %G "$file") == $(id -gn) ]]; then #-c specifies the format of the string
        group_read="Yes"
    else
        group_read="No"
    fi
    if [[ -w "$file" && $(stat -c %G "$file") == $(id -gn) ]]; then
        group_write="Yes"
    else
        group_write="No"
    fi
    if [[ -x "$file" && $(stat -c %G "$file") == $(id -gn) ]]; then
        group_execute="Yes"
    else
        group_execute="No"
    fi

    # Others permissions
    if [[ -r "$file" && $(stat -c %G "$file") != $(id -gn) ]]; then
        others_read="Yes"
    else
        others_read="No"
    fi
    if [[ -w "$file" && $(stat -c %G "$file") != $(id -gn) ]]; then
        others_write="Yes"
    else
        others_write="No"
    fi
    if [[ -x "$file" && $(stat -c %G "$file") != $(id -gn) ]]; then
        others_execute="Yes"
    else
        others_execute="No"
    fi

    # Output file permissions
    echo "Owner: Read: $owner_read, Write: $owner_write, Execute: $owner_execute"
    echo "Group: Read: $group_read, Write: $group_write, Execute: $group_execute"
    echo "Others: Read: $others_read, Write: $others_write, Execute: $others_execute"
    echo ""
}

# Prompt the user for input
echo "Please enter the file paths (separate multiple files with spaces):"
read -p "File(s): " input_files #-p to write a meesage before the input

# Check if input is empty
if [[ -z "$input_files" ]]; then #-z sees if the imput is empty
    echo "No files provided. Exiting..."
    exit 1
fi

# Loop over the input files
for file in $input_files; do
    check_permissions "$file"
done
