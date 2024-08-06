#!/bin/bash/

echo Name of the script[$0]

echo command line argument[$#]

for arg in $@; do
	echo argument [$arg]
done

echo all argument[$*]

if [ "{$12}" != "" ]; then
	echo argument 12 is [${12}]
	echo argument 12 is not [${12}]
fi
