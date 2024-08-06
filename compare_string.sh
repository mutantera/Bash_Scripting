#!/bin/bash/

a="A"
echo a=["$a"]
b="B"
echo b=["$b"]
anotherA="A"
echo anotherA=["$anotherA"]

if [[ "$a" == "$anotherA" ]]; then
	echo A is equal to anotherA
fi
if [[ "$a" != "$b" ]]; then
	echo A is not equal to B
fi
if [[ "$a" < "$b" ]];then
	echo A is greaterr than B
fi
if [[ "$b" > "$a" ]];then
	echo B is smaller than A
fi
