#!/bin/bash/

echo iterating over range
for i in {1..5}; do
	echo Index=[$i]
done

echo iterating hard-code
for i in 1 2 3 4 5; do
	echo Index=[$i]
done

echo print out the generated sequence
for(( i=1; i<=5; i++));
do
	echo index[$i]
done

echo print out the each line of the shell
for FILE in *.sh
do
	echo File=[$FILE]
	tail -n 1 $FILE
done
echo ''

counter=5
while [[ $counter -gt 0 ]]; do
	echo countdown [$counter]
	counter=$(($counter - 1))
done
echo Blastoff
