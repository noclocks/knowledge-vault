---
creation_date: 2024-03-08
modification_date: 2024-03-08
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/NA
  - Topic/NA
  - Status/NA
aliases:
  - Bash - Watch CPU Processes
publish: true
permalink:
description:
image:
cssclasses:
---

## Code

```bash
#!/usr/bin/env bash

watch -d -n 1 'ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head'
```

## Details

This shell command is used to monitor the processes that are consuming the most memory on your system. It uses two main utilities: `watch` and `ps`, combined with some other commands for sorting and limiting the output.

Here's a breakdown of the command:

1.  `watch -d -n 1`: The `watch` command is used to run the following command repeatedly and show the results in real time. The `-d` option tells `watch` to highlight the differences between successive updates. The `-n 1` option sets the interval between updates to 1 second.
2.  `'ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head'`: This is the command that `watch` runs. It's enclosed in single quotes to pass it as a single argument. The `ps` command is used to report a snapshot of the current processes. The `-eo` option is used to specify the format of the output:
    -   `pid`: Process ID.
    -   `ppid`: Parent process ID.
    -   `cmd`: Command name and arguments.
    -   `%mem`: Proportional set size of the process in memory.
    -   `%cpu`: CPU usage of the process.
    -   `--sort=-%mem`: This option sorts the output by the `%mem` field in descending order.
3.  `| head`: This part of the command pipes (`|`) the output of the `ps` command to the `head` command, which by default prints the first 10 lines of its input. This effectively limits the output to the top 10 processes by memory usage.

In summary, this command provides a real-time, continuously updated view of the top 10 processes consuming the most memory on your system.