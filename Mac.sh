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
java -Djava.library.path=${path}"/macosx-universal" -jar ${fil} ${PERSON} 
echo -e \\n 
echo "转换完成"