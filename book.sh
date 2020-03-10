#!/bin/bash

##A shell script to create chapter folders and empty scenes##

## SET NAME OF YOUR NOVEL HERE. REPLACE MyNovelName with name of your novel. No spaces allowed##
NovelName=BookName       

## SET PREFIX FOR EACH CHAPTER ##
ChapterName=Chapter 

## SET PREFIX FOR EACH SCENE##
SceneName=Scene

##<--Change 20 to number of chapter directories desired##	
d=20

##<--Change 10 to number of scenes in each chapter directory##					 
s=10					 		

mkdir -p $NovelName		 ##<--Creates the master directory for book##
cd $NovelName			 ##<--Enters the master directory to execute loops##

for ((i=1; i<=$d; i++)) 	
do
    mkdir $ChapterName$i ##<--Rename chapter directories to desired name##
    cd $ChapterName$i 	 ##Enters currently created directory##
    for((j=1;j<=$s;j++))	
    do
        touch $SceneName$j;	 ##Creates scenes in directory##
    done
    cd .. 				 ##Back out of directory to create next directory or finish##
done
