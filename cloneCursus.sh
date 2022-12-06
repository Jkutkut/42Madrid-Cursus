#!/bin/bash

USR="jkutkut"
SSH_CLONE_START="git@github.com:$USR/"
HTTPS_CLONE_START="https://github.com/$USR"
HTTPS_DOWNLOAD="https://raw.github.com/$USR"
CLONE_END=".git"

REPO="42Madrid-"


REPOS="Libft
get_next_line
Born2beroot
ft_printf
Examenes
so_long
pipex
push_swap
Philosophers
---"

for repoName in $(echo $REPOS); do
	if [ "$repoName" = "---" ]; then
		break
	fi
	echo; echo;
	echo "$SSH_CLONE_START$REPO$repoName$CLONE_END $repoName"
	git clone $SSH_CLONE_START$REPO$repoName$CLONE_END $reponame
done

if [ ! -d "42Madrid-Cursus" ]; then
	git clone git@github.com:Jkutkut/42Madrid-Cursus.git
fi
