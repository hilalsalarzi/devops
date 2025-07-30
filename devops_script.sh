#!/bin/bash

# Set working directory (use absolute path)
REPO_DIR="/home/hilalsalarzi/devops"
FILE_NAME="devops_commands.txt"

# Navigate to repo directory
cd "$REPO_DIR" || { echo "Directory not found!"; exit 1; }

# Add DevOps-related commands to a file
echo "DevOps Commands - $(date)" > "$FILE_NAME"
echo "1. Check running containers: docker ps" >> "$FILE_NAME"
echo "2. View system logs: journalctl -xe" >> "$FILE_NAME"
echo "3. Check Kubernetes pods: kubectl get pods" >> "$FILE_NAME"
echo "4. Check disk usage: df -h" >> "$FILE_NAME"
echo "5. Monitor system processes: top" >> "$FILE_NAME"

# Ensure Git uses your SSH key
export GIT_SSH_COMMAND="ssh -i /home/hilalsalarzi/.ssh/id_rsa"

# Git operations
git add .
git commit -m "Updated DevOps commands on $(date)"
git push origin master  # Change 'master' to 'main' if needed
