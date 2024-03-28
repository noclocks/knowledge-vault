---
creation_date: 2024-03-15
modification_date: 2024-03-15
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Tool/CLI
  - Topic/Dev/CLI
  - Status/WIP
aliases:
  - rembg
publish: true
permalink:
description:
image:
cssclasses:
---

## Contents

```table-of-contents
style: nestedList
minLevel: 2
maxLevel: 10
includeLinks: true
debugInConsole: false
```

## Overview

> [!SOURCE] Sources:
> - [GitHub: danielgatis/rembg](https://github.com/danielgatis/rembg)
> - [PyPi: rembg](https://pypi.org/project/rembg/2.0.28/)

`rembg` is a tool that leverages the online service [removebg]() to remove backgrounds of image files making them transparent.

## Installation

Pre-Requisites: `Python: >3.7, <3.13`

```python
pip install rembg # library
pip install rembg[cli] # library + CLI
```

## Usage

After the installation step you can use rembg just typing `rembg` in your terminal window.

The `rembg` command has 4 subcommands, one for each input type:

- `i` for files
- `p` for folders
- `s` for http server
- `b` for RGB24 pixel binary stream

```python
# Help
rembg --help
rembg <COMMAND> --help

# Local Input File
rembg i "path/to/input.png" "path/to/output.png"

# Remote Input File
curl -s "http://input.png" | rembg i > "output.png"

# Specific Model
rembg i -m u2netp "path/to/input.png" "path/to/output.png"
```


