#! /bin/bash

echo "
1. backup
2. format directory
3. help(README)
4. 

"
read once_answer

if [ $once_answer = "3" ];then
    read -p "your sure about that backup your file ? y/n " help_input
    cat README.txt
elif [ $once_answer = "1" ];then
    read -p "your sure about that backup your file ? y/n " answer
    if [ "$answer" = "y" ]; then    
        read -p "Do create your file to zip or rar ? zip/rar " answer2
        if [ "$answer2" = "zip" ]; then    
            mkdir backup
            cp * backup
            tar -cvf backup.zip backup
            cd backup
            rm *
            cd ..
            rmdir backup
            mkdir backup
            mv backup.zip backup
        elif [ "$answer2" = "rar" ]; then
            mkdir backup
            cp * backup
            tar -cvf backup.rar backup
            cd backup
            rm *
            cd ..
            rmdir backup
            mkdir backup
            mv backup.rar backup
        fi 
    else 
    echo "ok! you are not make backup!"    
    fi
elif [ $once_answer = "2" ];then
    read -p "are sure about that ? y/n " once_answer_2
    if [ $once_answer_2 = y ];then
        echo "Ok!"
        rm *
        rmdir *
    else
        echo "Ok!"
    fi
fi





