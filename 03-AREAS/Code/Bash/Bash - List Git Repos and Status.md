---
creation_date: 2024-03-08
modification_date: 2024-03-08
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code/Bash
  - Topic/Dev/Bash
  - Status/Complete
aliases:
  - List Git Repos and Status
publish: true
cssclasses:
---

## Code

```bash
find ~ -type d -name .git | sed 's?/\.git$??' | awk '{ print "-------------------------"; print "\033[1;32mGit Repo:\033[0m " $0; system("git --git-dir=\""$0"\"/.git --work-tree=\""$0"\" status")}'
```

## Details

This shell script is used to find all Git repositories in your home directory and print their statuses. It's a one-liner that combines several commands using pipes (`|`), which pass the output of one command as the input to the next.

1.  `find ~ -type d -name .git`: This command starts at the home directory (`~`) and recursively searches for all directories (`-type d`) named [`.git`](vscode-file://vscode-app/c:/Program Files/Microsoft VS Code/resources/app/out/vs/code/electron-sandbox/workbench/workbench.html). These directories are created by Git to store repository data.
2.  `sed 's?/\.git$??'`: This command uses the `sed` (stream editor) utility to manipulate the output of the `find` command. The expression `'s?/\.git$??'` is a substitution command that removes the trailing [`/.git`](vscode-file://vscode-app/c:/Program Files/Microsoft VS Code/resources/app/out/vs/code/electron-sandbox/workbench/workbench.html) from each line. The `?` characters are used as delimiters instead of the more common [`/`](vscode-file://vscode-app/c:/Program Files/Microsoft VS Code/resources/app/out/vs/code/electron-sandbox/workbench/workbench.html) to avoid escaping the [`/`](vscode-file://vscode-app/c:/Program Files/Microsoft VS Code/resources/app/out/vs/code/electron-sandbox/workbench/workbench.html) in [`/.git`](vscode-file://vscode-app/c:/Program Files/Microsoft VS Code/resources/app/out/vs/code/electron-sandbox/workbench/workbench.html).
3.  `awk '{ print "-------------------------"; print "\033[1;32mGit Repo:\033[0m " $0; system("git --git-dir=\""$0"\"/.git --work-tree=\""$0"\" status")}'`: This command uses `awk`, a programming language designed for text processing. For each line of input (each directory path from the previous commands), it does the following:
    -   Prints a separator line (`-------------------------`).
    -   Prints the directory path with a "Git Repo:" prefix. The `\033[1;32m` and `\033[0m` are ANSI escape codes that color the output in green.
    -   Runs the `git status` command in the directory. The `system()` function is used to execute this command. The `--git-dir` and `--work-tree` options are used to specify the location of the [`.git`](vscode-file://vscode-app/c:/Program Files/Microsoft VS Code/resources/app/out/vs/code/electron-sandbox/workbench/workbench.html) directory and the working tree, respectively.

In summary, this script finds all Git repositories in your home directory, removes the [`/.git`](vscode-file://vscode-app/c:/Program Files/Microsoft VS Code/resources/app/out/vs/code/electron-sandbox/workbench/workbench.html) part from their paths, and then prints their paths and statuses.
