#!/bin/bash

for i in $(seq -w 10 99); do
	pattern="v${i}*"
	git push origin "refs/tags/${pattern}" &>/dev/null
	if [ $? -ne 0 ]; then
		echo "failed to push $pattern"
	fi
done
