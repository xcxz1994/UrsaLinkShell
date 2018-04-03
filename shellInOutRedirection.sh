#!/bin/bash

#!/bin/bash

#输出重定向
#command1 > file1
#上面这个命令执行command1然后将输出的内容存入file1
#注意任何file1内的已经存在的内容将被新内容替代。如果要将新内容添加在文件末尾，请使用>>操作符

#who > users

#输入重定向

#command1 < file1
#这样，本来需要从键盘获取输入的命令会转移到文件读取内容。

#注意：输出重定向是大于号(>)，输入重定向是小于号(<)。

#wc -l users

#echo "输入重定向test"

#wc -l < users

#同时替换输入和输出，执行command1，从文件infile读取内容，然后写入到文件outfile中去

#command1 < infile > outfile

#如果希望stderr 重定向到file ，可以这样写：
:<<!
如果希望stderr 重定向到file ，可以这样写：

command 2 > file

command 2 >> file   //如果希望stderr追加到file文件末尾

#2表示标准错位文件（stderr）
!

#如果希望将stdout和stderr合并后重定向到file，可以这样写：
:<<!
如果希望将stdout和stderr合并后重定向到file，可以这样写：

command > file 2&1

#或者

command >> 2&1

!

#Here Document 是 Shell 中的一种特殊的重定向方式，用来将输入重定向到一个交互式 Shell 脚本或程序。

#它的基本的形式如下：
:<<!
command << delimiter
  document
delimiter
!

#它的作用是将两个 delimiter 之间的内容(document) 作为输入传递给 command
#（1）结尾的delimiter一定要顶格写，前面不能有任何字符，后面也不能有任何字符，包括空格和Tab缩进

#（2）开始的delimiter前后的空格会被忽略掉

wc -l << EOF
    欢迎来到
    菜鸟教程
    www.runoob.com
EOF

#如果希望执行某个命令，但又不希望在屏幕上显示输出结果，那么可以将输出重定向到/dev/null：


#command > /dev/null

#一个特殊的文件，写入到它的内容都会被丢弃；如果尝试从该文件读取内容，将什么也读不到，会起到“禁止输出的”效果

# 如果希望屏蔽stdout和stderr，可以这样写：

#command > /dev/null 2>&1
