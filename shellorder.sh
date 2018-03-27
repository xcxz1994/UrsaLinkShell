
#!/bin/bash
:<<!
#Shell echo

#显示普通字符串
echo "It is a test"
echo It is a test

#显示转义字符
echo "\"It is a test\""

#显示变量
read name
echo "$name It is a test"

#显示换行
echo -e "OK! \n" 
 #-e 开启转义
echo "It is  a test"

#显示不换行
echo -e "OK! \c" 
 #-e 开启转义 \c 不换行
echo "It is a test"

#显示结果定向至文件
echo "It is a test" > myfile

#原样输出字符串，不进行转义或取变量(用单引号)
echo '$name\"'

#显示命令执行结果
echo `date`
!

:<<!
#shell printf
echo "Hello,shell"
printf "Hello,shell\n"

printf "%-10s %-8s %-4s\n" 姓名 性别 体重kg
printf "%-10s %-8s %-4.2f\n" 郭靖 男 66.1234 
printf "%-10s %-8s %-4.2f\n" 杨过 男 48.6543 
printf "%-10s %-8s %-4.2f\n" 郭芙 女 47.9876

#%s %c %d %f都是格式替代符

#%-10s 指一个宽度为10个字符（-表示左对齐，没有则表示右对齐），任何字符都会被显示在10个字符宽的字符内，如果不足则自动以空格填充，超过也会将内容全部显示出来。

#%-4.2f 指格式化为小数，其中.2指保留2位小数


#format-string为双引号
printf "%d %s\n" 1 "abc"

#单引号与双引号效果一样 
printf '%d %s\n' 1 "abc"

#没有引号也可以输出
printf %s abcdef

#格式只指定了一个参数，但多出的参数仍然会按照该格式输出，format-string 被重用
printf %s abc def

printf "%s\n" abc def

printf "%s %s %s\n" a b c d e f g h i j

#如果没有 arguments，那么 %s 用NULL代替，%d 用 0 代替
printf "%s and %d \n"
!

printf "a string,no processing:<%s>\n" "A\nB"

printf "a string,no processing:<%b>\n" "A\nB"

printf "www.cnblog.com \a"

