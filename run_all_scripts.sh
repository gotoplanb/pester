#!/bin/bash

# Directory containing the curl scripts
SCRIPT_DIR="curl_scripts"

# Check if BASE_URL is set
if [ -z "${BASE_URL}" ]; then
    echo "Error: BASE_URL environment variable is not set"
    echo "Please set it first, for example:"
    echo "export BASE_URL='http://localhost:8000'"
    exit 1
fi

# Check if directory exists
if [ ! -d "$SCRIPT_DIR" ]; then
    echo "Error: Directory $SCRIPT_DIR not found!"
    exit 1
fi

# Iterate through all .sh files in the directory
for script in "$SCRIPT_DIR"/*.sh; do
    if [ -f "$script" ]; then
        echo "Executing $script..."
        chmod +x "$script"  # Make sure the script is executable
        bash "$script"
        echo "Completed $script"
        echo "-------------------"
    fi
done

echo "All scripts executed successfully!" 