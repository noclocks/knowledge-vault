---
creation_date: 2024-03-08
modification_date: 2024-03-08
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/NA
  - Topic/NA
  - Status/NA
aliases:
  - Bash - Rename All Items in Directory to Lowercase
publish: true
permalink:
description:
image:
cssclasses:
---

## Code

```bash
#!/usr/bin/env bash

for name in *; do mv "$name" "${name,,}"; done
```

## Details

This shell script is used to rename all files in the current directory to lowercase. It's a one-liner that uses a `for` loop to iterate over all items in the current directory.

Here's a breakdown of the script:

1.  `for name in *; do`: This starts a `for` loop that iterates over every item in the current directory. The `*` is a wildcard that matches all files and directories. For each item, the variable `name` is set to its name.
2.  `mv "$name" "${name,,}";`: This is the body of the `for` loop, executed for each item. The `mv` command is used to rename (move) files. It takes two arguments: the current name of the file and the new name. The new name is `${name,,}`, which is a parameter expansion that converts the value of `name` to lowercase. The double commas (`,,`) indicate that all characters should be converted.
3.  `done`: This ends the `for` loop.

In summary, this script iterates over all items in the current directory and renames them to be all lowercase. It's a quick and easy way to standardize file names. Note that it will also rename directories, and it won't handle name collisions (if two files have the same name when case is ignored).