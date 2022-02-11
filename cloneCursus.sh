#!/bin/sh

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

wget $HTTPS_DOWNLOAD/$REPO/master/README.md -O $TMP_FILE --no-verbose

for l in $(cat $TMP_FILE); do
	if (expr match "$l" "| .+ | .+ | .+ |"); then
	#if (expr match "l" "| .+ | .+ | .+ |"); then
		echo "$l"
	fi
done


