#!/bin/bash
# Directory Organizer Script
# Usage: ./organize.sh [target_directory]
# If no directory is provided, the current directory is used.

# Set target directory (default: current directory)
TARGET_DIR="${1:-.}"

# Log file (optional)
LOG_FILE="$TARGET_DIR/organizer.log"

# Function to log operations
log_operation() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

echo "Organizing files in $TARGET_DIR..."

# Loop over each file in the directory (not directories)
for file in "$TARGET_DIR"/*; do
  if [ -f "$file" ]; then
    # Get the file extension (convert to lowercase)
    extension="${file##*.}"
    extension=$(echo "$extension" | tr '[:upper:]' '[:lower:]')

    # Determine the destination folder based on extension
    dest_folder="$TARGET_DIR/$extension-files"
    
    # Create destination folder if it doesn't exist
    if [ ! -d "$dest_folder" ]; then
      mkdir "$dest_folder"
      log_operation "Created directory: $dest_folder"
    fi

    # Move file to the destination folder
    mv "$file" "$dest_folder/"
    log_operation "Moved file: $(basename "$file") to $dest_folder"
  fi
done

echo "Organization complete. Log file: $LOG_FILE"
