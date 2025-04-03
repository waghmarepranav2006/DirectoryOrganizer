# Directory Organizer

A simple shell script that automatically organizes files in a specified directory into subdirectories based on their file extensions.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Usage](#usage)

## Introduction

Managing cluttered directories can be challenging. The Directory Organizer script automates file organization by scanning a target directory, identifying file types based on their extensions, and moving each file into a corresponding subdirectory (e.g., all `.jpg` files go into a `jpg-files` folder). This project demonstrates the power of shell scripting for practical file management tasks.

## Features

- **Automatic Organization:** Scans a target directory and organizes files based on their file extensions.
- **Subdirectory Creation:** Creates new subdirectories if they do not already exist.
- **Logging:** Maintains a log file (`organizer.log`) that records all operations with timestamps.
- **Flexible Usage:** Run the script with or without specifying a target directory (defaults to the current directory).

## Prerequisites

- **Operating System:** Windows with WSL (Ubuntu) or any Unix-like environment.
- **Tools:**
  - Bash shell
  - `dos2unix` (optional, for converting Windows line endings)

## Usage

1. **Convert Line Endings (if necessary):**
   `dos2unix directory_organizer.sh`
2. **Make the Script Executable:**
   `chmod +x directory_organizer.sh`
3. **Run the Script:**
   `./directory_organizer.sh`
