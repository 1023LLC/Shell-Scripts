#!/bin/bash

while true; do
    echo "1. List files"
    echo "2. Create file"
    echo "3. Delete file"
    echo "4. Create directory"
    echo "5. Delete directory"
    echo "6. Exit"

    read -p "Enter your choice: " choice


    case $choice in
        1) 
            ls -l
            ;;
        2)
            read -p "Enter file name to create: " filename
            touch "$filename"
            ;;
        3)
            read -p "Enter file name to delete: " filename
            rm "$filename"
            echo "File deleted: $filename"
            ;;
        4)
            read -p "Enter directory name to create: " dirname
            mkdir "$dirname"
            echo "Directory created: $dirname"
            ;;
        5)
            read -p "Enter name to delete: " dirname
            rmdir "$dirname"
            echo "Directory deleted: $dirname"
            ;;
        6)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a number from 1 to 6 !"
            ;;
    esac

    echo ""

done