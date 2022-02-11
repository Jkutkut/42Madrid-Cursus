#!/bin/bash

USR="jkutkut"
SSH_CLONE_START="git@github.com:$USR/"
HTTPS_CLONE_START="https://github.com/$USR"
HTTPS_DOWNLOAD="https://raw.github.com/$USR"
CLONE_END=".git"

REPO="42Madrid-Cursus"

TMP_FILE="tmp_readme.md"

sshMultiClone() {
	type=$1
	start=$2
	end=$3

	for i in $(seq -w $start $end); do
		repoName=$REPO_PREFIX$type"_"$i
		echo $SSH_CLONE_START$repoName$CLONE_END
		git clone $SSH_CLONE_START$repoName$CLONE_END
	done
}

# wget $HTTPS_DOWNLOAD/$REPO/master/README.md -O $TMP_FILE --no-verbose

#while read l; do
#	#if [[ "$l" =~ "## Projects:" ]]; then
#	if [[ "$l" =~ "\| .* \| .* \| .* \|" ]]; then
#		echo "-----------------------------------"
#		echo "$l"
#		echo "-----------------------------------"
#	fi
#done < $TMP_FILE



cat $TMP_FILE | grep "<!--" -v | cut -d '|' -f 2 -s | grep "\[" | sed 's/\[(.*)\]\((.*)\)/git clone \2 \1/'
#cat $TMP_FILE | grep "<!--" -v | cut -d '|' -f 2 -s | grep "\[" 
#cat $TMP_FILE | grep "<!--" -v | cut -d '|' -f 2 -s | grep "\[" 
