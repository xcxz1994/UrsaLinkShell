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
:<<!
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
!
#for 循环一般格式为：

:<<!
for var in item1 item2 ... itemN
do
  command1
  command2
  ...
  commandN
done
!
#写成一行：

#for var in item1 item2 ... itemN;do command1;command2.. done;
#当变量值在列表里，for循环即执行一次所有命令，使用变量名获取列表中的当前取值。命令可为任何有效的shell命令和语句。in列表可以包含替换、字符串和文件名。
:<<！
for loop in 1 2 3 4 5
do
 echo "The value is:$loop"
done

for str in "This is a string"
do
 echo $str
done
！
#while 语句其格式为：

:<<!
while condition
do
 command
done

!
:<<!
int=1
while(( $int <= 5))
do 
  echo $int
  let "int++"
done
!
#while循环可用于读取键盘信息
:<<!
echo "按下 <CTRL-D> 退出"
echo -n "输入你最喜欢的网站名:"
while read FILM
do 
 echo "是的！$FILM 是一个好网站"
done

!
#无限循环语法格式：
:<<!
while 
do
 command
done

while true
do
  command
done

for (( ; ;))

!

#until 语法格式:
:<<!
until condition
do
  command
done
#条件可为任意测试条件，测试发生在循环末尾，因此循环至少执行一次—请注意这一点。
!


#case 语句格式如下：
:<<!
case 值 in
模式1)
  command1
  command2
  ...
  commandN
  ;;
模式2)
  command1
  command2
  ...
  commandN
  ;;
esac
!

#case的语法和C family语言差别很大，它需要一个esac（就是case反过来）作为结束标记，每个case分支用右圆括号，用两个分号表示break。
:<<!
echo "输入 1 到 4 之间的数字:"
echo "你输入的数字为:'"
read aNum
case $aNum in
  1) echo "你选择了 1"
  ;;
  2) echo "你选择了 2"
  ;;
  3) echo "你选择了 3"
  ;;
  4) echo "你选择了 4"
  ;;
  *) echo "你没有输入 1 到 4 之间的数字"
  ;;
esac
!


#break break命令允许跳出所有循环（终止执行后面的所有循环）:
:<<!
while :
do 
  echo -n "输入 1 到 5 之间的数字:"
  read aNum
  case $aNum in
     1|2|3|4|5) echo "你输入的数字为 $aNum!"
     ;;
     *) echo "你输入的数字不是 1 到 5 之间的! 游戏结束"
        break
     ;;
  esac
done
!

#continue continue命令与break命令类似，只有一点差别，它不会跳出所有循环，仅仅跳出当前循环。


while :
do
 echo -n "输入 1 到 5 之间的数字: "
 read aNUm
 case $aNum in
    1|2|3|4|5) echo "你输入的数字为 $aNum!"
    ;;
    *) echo "你输入的数字不是 1 到 5 之间的!"
         continue
         echo "游戏结束"
    ;;
 esac
done


