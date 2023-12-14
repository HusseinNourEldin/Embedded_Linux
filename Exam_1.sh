#!/bin/bash
cd ~/
if [ -d "exam_directory" ]; then
	echo "the exam_directory does exists" 
	if [ -z "$(ls -A ~/exam_directory/)" ]; then
		echo "the exam_directory is empty so the script will create 3 text file named 	file1,file2,file3" 
		cd ~/exam_directory
		touch file1.text file2.text file3.txt
		echo "the three files created"
	else 
		echo "the directory does exists and it contains the following files"
		cd ~/exam_directory
		ls -l
	fi
else 
	echo "the directory doesn't exists so this script will create it and  will create the three ext file in it"
	cd ~/	
	mkdir exam_directory
	echo "directory created"
	cd exam_directory
	touch file1.txt file2.txt file3.txt 
	echo "three files created"
fi
