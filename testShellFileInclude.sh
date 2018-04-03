#!/bin/bash

#Shell 文件包含的语法格式如下

:<<!
. filename #注意点号(.)和文件名中间有一空格

or

source filename
!

#使用 . 号来引用test1.sh 文件
. ./test1.sh

# 或者使用以下包含文件代码
source ./test1.sh

echo "菜鸟教程官网地址：$url"

