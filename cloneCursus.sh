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
Exam_Rank_02
pipex
push_swap
so_long
---
Exam_Rank_03
Exam_Rank_04
Exam_Rank_05
Exam_Rank_06"

for repoName in $(echo $REPOS); do
	if [ "$repoName" = "---" ]; then
		break
	fi
	echo; echo;
	echo "$SSH_CLONE_START$REPO$repoName$CLONE_END $repoName"
	git clone $SSH_CLONE_START$REPO$repoName$CLONE_END $reponame
done

