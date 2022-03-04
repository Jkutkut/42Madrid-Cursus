#!/bin/bash

USR="jkutkut"
SSH_CLONE_START="git@github.com:$USR/"
HTTPS_CLONE_START="https://github.com/$USR"
HTTPS_DOWNLOAD="https://raw.github.com/$USR"
CLONE_END=".git"

REPO="42Madrid-"

REPOS="Born2beroot
ft_printf
get_next_line
Libft
pipex
push_swap
so_long"

for reponame in $REPOS; do
	echo $SSH_CLONE_START$REPO$repoName$CLONE_END
	git clone $SSH_CLONE_START$REPO$repoName$CLONE_END $reponame
done

