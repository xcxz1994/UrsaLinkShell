#!/bin/bash

#if else

#if 语句语法格式：
:<<!
if conditon
then
   command1
   command2....
   commandN
fi
!

if [ $(ps -ef | grep -c "ssh") -gt 1 ];then echo "true";fi


#if else 语句语法格式：
:<<!
if condition
then
  command1
  command2
  ...
  commandN
else
  command
fi
!


#if else-if else语句语法格式：
:<<!
if condition1
then
  command1
elif condition2
then
  command2
else
  commandN
fi
!

a=10
b=20
if [ $a == $b ]
then
 echo "a 等于 b"
elif [ $a -gt $b ]
then
 echo "a 大于 b"
elif [ $a -lt $b ]
then
  echo "a 小于 b"
else
 echo "没有符合的条件"
fi


num1=$[2*3]
num2=$[1+5]
if test $[num1] -eq $[num2]
then
 echo "两个数字相等!"
else
 echo "两个数字不相等!"
fi


