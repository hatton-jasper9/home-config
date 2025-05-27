#!/bin/bash -ex

function tag_search {
	cd "$1"
	for fname in *; do
		if [ -d "$fname" ]; then
			tag_search "$fname"
		else
			ctags -a -o /home/jhatton/rebel/src/tags "$fname"
		fi
	done
	cd ..
}

tag_search .
