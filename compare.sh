#!/bin/bash/

x=1
echo x=["$x"]
y=2
echo y=["$y"]
z=2
echo z=["$z"]

if [[ "$x" -ne "$y" ]]; then
	echo ["$x"] ne ["$y"]
fi
if [[ "$y" -eq "$z" ]]; then
	echo ["$y"] eq ["$z"]
fi
if [[ "$y" -gt "$x" ]]; then
	echo ["$y"] gt ["$x"]
fi
if [[ "$y" -ge "$z" ]]; then
	echo "[$y"] ge ["$z"]
fi
if [[ "$x" -lt "$y" ]]; then
	echo x is less then y
fi
if [[ "$y" -le "$z" ]]; then
	echo y is less or equal z
fi
