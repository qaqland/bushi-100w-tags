#!/bin/bash

total=1000000

for ((i=1; i<=total; i++)); do
	tag_name="v$i"
	git tag -a "$tag_name" -m "tag: $tag_name" &>/dev/null
done
