#!/bin/bash

# Author : CRST
# Copyright (c) 
# Code follows here:
echo "请输入文件夹地址"
read PERSON
echo -e \\n 
path=$(dirname $0)
path=${path/\./$(pwd)}
fil=${path}"/hello.jar"
if [ $(getconf WORD_BIT) = '32' ] && [ $(getconf LONG_BIT) = '64' ]
then
 java -Djava.library.path=${path}"/linux-x64" -jar ${fil} ${PERSON} 
echo -e \\n 
echo "转换完成"
else
 java -Djava.library.path=${path}"/linux-x86" -jar ${fil} ${PERSON} 
echo -e \\n 
echo "转换完成"
fi
