#!/bin/bash
 
#  for file in `ls /etc`;
#  do
#    echo $file
#  done

#myUrl="http://www.baidu.com"
#readonly myUrl
#myUrl="http://www.163.com"
#unset myUrl
#echo $myUrl

#str='this is a string'
#echo $str
#str2='this is ${str}'
#echo $str2
#str3='this is  \'chunyu\' for you'
#echo $str3

#your_name='chunyu'
#str="Hello,I know you are \"$your_name\"! \n"
#echo $str


#your_name="chunyu"
#greeting="hello,"$your_name"!"
#greeting_1="hello,${your_name}!"
#echo $greeting $greeting_1

#string="runoob is a great site"
#echo ${#string}

#string="runoob is  a great site"
#echo ${string:1:5}


#string="runoob is a great company"
#echo `expr index "$string" is`


#var="http://www.runoob.com/linux/linux-shell-variable.html"

#s1=${var%%t*}
#s2=${var%t*}
#s3=${var%%.*}
#s4=${var#*/}
#s5=${var##*/}

#echo "关于字符串的截取%，#的使用方法"
#echo "原字符串为："${var}
#echo "%%t*的效果："${s1}
#echo "%t*的效果："${s2}
#echo "%%.*的效果："${s3}
#echo "#*/的效果："${s4}
#echo "##*/的效果："${s5}


#string="hello,everyone my name is chunyu"
#expr length "$string"

#expr 5+6
#expr 5 + 6

#expr 5 * 6
#expr 5 \* 6
 


#my_array=(A B "C" D)
#array_name[0]=value0
#array_name[1]=value1
#array_name[2]=value2

#echo ${my_array[1]}
#echo ${array_name[@]}

#echo "第一个元素为: ${my_array[0]}"
#echo "第二个元素为: ${my_array[1]}"
#echo "第三个元素为: ${my_array[2]}"
#echo "第四个元素为: ${my_array[3]}"

#my_array[0]=A
#my_array[1]=B
#my_array[2]=C
#my_array[3]=D


#echo "数组的元素为: ${my_array[*]}"
#echo "数组的元素为: ${my_array[@]}"



#a=10
#b=20

:<<!
if [[ $a -lt 100 && $b -gt 100 ]]
then
 echo "返回 true"
else
  echo "返回 false"
fi

if [[ $a -lt 100 || $b -gt 100 ]]
then
 echo "返回 true"
else
 echo "返回 false"

#val=`expr 2 + 2`
#echo "两数之和为 :$val"

!

#a=10
#b=20

#val=`expr $a + $b`
#echo "a+b:$val"

#val=`expr $a - $b`
#echo "a-b:$val"

#val=`expr $a \* $b`
#echo "a*b :$val"

#val=`expr $b / $a`
#echo "b / a:$val"

#val=`expr $b % $a`
#echo "b % a:$val"

#if [ $a == $b ]
#then
#  echo "a=b"
#fi
#if [ $a != $b ]
#then
#   echo "a!=b"
#fi

:<<!
if [ $a -eq $b ]
then 
   echo "$a -eq $b:a=b"
else
   echo "$a -eq $b:a!=b"
fi

if [ $a -ne $b ]
then 
   echo "$a -ne $b:a!=b"
else
   echo "$a -ne $b:a=b"
fi

if [ $a -gt $b ]
then 
  echo "$a -gt $b:a>b"
else
  echo "$a -gt $b:a!>b"
fi

if [ $a -lt $b ]
then
 echo "$a -lt $b:a<b"
else
 echo "$a -lt $b:a!<b"
fi

if [ $a -ge $b ]
then 
  echo "$a -ge $b:a>or=b"
else 
  echo "$a -ge $b:a<b"
fi

if [ $a -le $b ]
then
  echo "$a -le $b:a <or= b"
else
  echo "$a -le $b:a>b"
fi
!
:<<!
a=10
b=20

if [ $a != $b ]
then
 echo "$a !=$b:a != b"
else
 echo "$a !=$b:a = b"
fi

if [ $a -lt 100 -a $b -gt 15 ]
then
 echo "$a 小于 100 且 $b 大于 15 : 返回 true"
else
 echo "$a 小于 100 且 $b 大于 15 : 返回 false"
fi

if [ $a -lt 100 -o $b -gt 100 ]
then
 echo "$a 小于 100 或 $b 大于 100 : 返回 true"
else
 echo "$a 小于 100 或 $b 大于 100 : 返回 false"
fi

if [ $a -lt 5 -o $b -gt 100 ]
then
 echo "$a 小于 5 或 $b 大于 100 : 返回 true"
else
 echo "$a 小于 5 或 $b 大于 100 : 返回 false"
fi
!
:<<!
a="abc"
b="efg"


if [ $a = $b ]
then
 echo "$a=$b:a 等于 b"
else
 echo "$a=$b:a 不等于 b"
fi

if [ $a != $b ]
then
 echo "$a!=$b:a 不等于 b"
else 
 echo "$a!=$b:a 等于 b"
fi

if [ -z $a ]
then
 echo "-z $a:字符串长度为 0"
else
 echo "-z $a:字符串长度不为 0"
fi

if [ -n $a ]
then
 echo "-n $a:字符串长度不为 0"
else
 echo "-n $a:字符串长度为 0"
fi

if [ $a ]
then
 echo "$a:字符串不为空"
else
 echo "字符串为空"
fi
!

file="/home/chunyu/ursalinkShell/test.sh"
if [ -r $file ]
then
 echo "文件可读"
else
 echo "文件不可读"
fi

if [ -w $file ]
then 
 echo "文件可写"
else
 echo "文件不可写"
fi

if [ -x $file ]
then 
 echo "文件可执行"
else
 echo "文件不可执行"
fi

if [ -f $file ]
then
 echo "文件为普通文件"
else
 echo "文件为特殊文件"
fi

if [ -d $file ]
then
 echo "文件是个目录"
else
 echo "文件不是个目录"
fi

if [ -s $file ]
then
 echo "文件不为空"
else
 echo "文件为空"
fi

if [ -e $file ]
then
 echo "文件存在"
else
 echo "文件不存在"
fi



