#!/usr/bin/env bash

find ~ -type d -name .git | sed 's?/\.git$??' | awk '{ print "-------------------------"; print "\033[1;32mGit Repo:\033[0m " $0; system("git --git-dir=\""$0"\"/.git --work-tree=\""$0"\" status")}'
