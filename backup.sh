#! /bin/bash

read -p "your sure about that backup your file ? y/n " answer

if [ "$answer" == "y" ]
then    
    read -p "Do create your file to zip or rar ? zip/rar " answer2
    if [ "$answer2" == "zip" ]
    then    
        mkdir backup
        cp * backup
        tar -cvf backup.zip backup
        cd backup
        rm *
        cd ..
        rmdir backup
        mkdir backup
        mv backup.zip backup
    elif [ "$answer2" == "rar" ]
        mkdir backup
        cp * backup
        tar -cvf backup.rar backup
        cd backup
        rm *
        cd ..
        rmdir backup
        mkdir backup
        mv backup.zip backup
    fi 
else 
    echo "ok! you are not make backup!"    
fi