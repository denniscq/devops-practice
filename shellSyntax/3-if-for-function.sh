#!/bin/bash
##############
# Author: dennis
# Date: 2023/06/14
# Description: practice bash shell
##############

# if
# []作为判断语句, -gt -lt
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

# (())作为判断语句, > <
if (( $a == $b ))
then
   echo "a 等于 b"
elif (( $a > $b ))
then
   echo "a 大于 b"
elif (( $a < $b ))
then
   echo "a 小于 b"
else
   echo "没有符合的条件"
fi

# for
for loop in 1 2 3 4 5
do
    echo "The value is: $loop"
done

# while
int=1
while(( $int<=5 ))
do
    echo $int
    let "int++"
done

# until
a=0
until [ ! $a -lt 10 ]
do
   echo $a
   a=`expr $a + 1`
done

# switch similar
echo '输入 1 到 4 之间的数字:'
echo '你输入的数字为:'
read aNum
case $aNum in
    1)  echo '你选择了 1'
    ;;
    2)  echo '你选择了 2'
    ;;
    3)  echo '你选择了 3'
    ;;
    4)  echo '你选择了 4'
    ;;
    *)  echo '你没有输入 1 到 4 之间的数字'
    ;;
esac

# function
funWithReturnAndParam(){
    echo "这个函数会对输入的两个数字进行相加运算..."
    echo "输入第一个数字: "
    read aNum
    return $(($aNum+${3}))
}
funWithReturnAndParam 1 2 3 4 5
echo "输入的两个数字之和为 $? !"

