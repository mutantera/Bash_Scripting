#!/bin/bash/

case $1 in
[1-3])
	message="Argument is b/w 1 and 3"
	;;
[4-6])
	message="Argument is b/w 4 and 6"
	;;
[7-9])
	message="Argument is b/w 7 and 9"
	;;
1[0-9])
	message="Argument is b/w 10 and 19"
	;;
*)
	message="I don't understand the argument"
esac

echo "$message"
