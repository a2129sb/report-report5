#!/bin/bash

#入力値の読み込み
read a b

#入力された値aを変数mに代入
m = $a

#bがmより大きいか比較
#b>mならmにbを代入
if [ $b -lt $m ]
then
m = $b
fi

#最大公約数を探すループを回す
while [ $m -ne 0 ]
do
x = `expr $a % $m`
y = `expr $b % $m`

#xとyが共に0になったら終了
#最大公約数を出力
if [ $x -eq 0 -a $y -eq 0 ]
then

#2つの入力値の最大公約数を出力
echo $a "と" $b "の最大公約数は" $m
break
fi
m = `expr $m - 1`

done
