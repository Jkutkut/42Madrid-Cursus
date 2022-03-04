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
Exam_Rank_02
so_long
pipex
push_swap
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

if [ ! -d "42Madrid-Cursus" ]; then
	git clone git@github.com:Jkutkut/42Madrid-Cursus.git
fi
