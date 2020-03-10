#!/bin/bash

##A shell script to create chapter folders and empty scenes##

mkdir MyGreatNovel 		##<--Creates the master directory for book##
cd MyGreatNovel			##<--Enters the master directory to execute loops##

for ((i=1; i<=20; i++)) ##<--Change 20 to number of chapter folders desired##
do
    mkdir Chapter$i 	##<--Rename chapter directories to desired name##
    cd Chapter$i 		##Enters currently created directory##
    for((j=1;j<=10;j++))##<--Change 10 to number of scenes in each chapter folder##
    do
        touch Scene$j;	##Creates scenes in directory##
    done
    cd .. 				##Back out of directory to create next directory or finish##
done
