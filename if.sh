#!/bin/bash/

if [[ -d /etc/ ]]; then
	echo /etc/ is a directory
else
	echo /etc/ is not a directory
fi

if [[ -e hello.sh ]]; then
	echo hello.sh is exist
else
	echo hello.sh is not exist
fi

TEST_VAR="Enter The Value"
if [[ $TEST_VAR == "test" ]]; then
	echo TEST_VAR is a "test" value
elif [[ $TEST_VAR == "again" ]]; then
	echo TEST_VAR is "again" value
else
	echo TEST_VAR is unknown
fi
