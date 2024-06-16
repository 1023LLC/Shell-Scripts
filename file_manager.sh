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

done#!/bin/bash

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
            if [ -e "$filename" ]; then
                echo "File already exists: $filename"
            else
                touch "$filename" && echo "File created: $filename"
            fi
            ;;
        3)
            read -p "Enter file name to delete: " filename
            if [ -e "$filename" ]; then
                rm "$filename" && echo "File deleted: $filename"
            else
                echo "File not found: $filename"
            fi
            ;;
        4)
            read -p "Enter directory name to create: " dirname
            if [ -e "$dirname" ]; then
                echo "Directory already exists: $dirname"
            else
                mkdir "$dirname" && echo "Directory created: $dirname"
            fi
            ;;
        5)
            read -p "Enter directory name to delete: " dirname
            if [ -d "$dirname" ]; then
                rmdir "$dirname" && echo "Directory deleted: $dirname"
            else
                echo "Directory not found or not empty: $dirname"
            fi
            ;;
        6)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a number from 1 to 6!"
            ;;
    esac

    echo ""
done
