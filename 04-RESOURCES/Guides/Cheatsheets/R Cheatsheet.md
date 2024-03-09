---
creation_date: 2024-03-08
modification_date: 2024-03-08
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/NA
  - Topic/NA
  - Status/NA
aliases:
  - R Cheatsheet
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

## Package Management

- Installation:

```R
install.packages("dplyr")

pak::pak("dplyr")
```

```bash
R CMD INSTALL /path/to/pkg
```

```bash
cd /path/to/project/source
Rscript -e "install.packages('$PWD', repos=NULL, type='source')"
```



- Installed Package Metadata:

```R
packageVersion("dplyr")
packageDescription("dplyr")

sessioninfo()
```

- Print list of functions in package:

```R
ls('package:dplyr')
```

- Unload/Detach Library:

```R
detach('package:dplyr', unload = TRUE)
```

Store Variable Inside Package Environment:

```R
.pkgenv <- new.env()

set.workdir <- function(path) {
  assign('WORKDIR', path, envir=.pkgenv)
}

get.workdir <- function() {
  get('WORKDIR', envir=.AchiaEnv)
}
```


## Scripting

Use this first line for R scripts:

```R
#!/usr/bin/env Rscript
```

Ask for user input in Rscript:

```R
cat('\n[Press Enter]\n')
foo <- scan("stdin", character(), n=1, nlines=1, quiet=TRUE)
```

Getting help
------------

Get help about any R function or structure:

    # documentation of the `rle` function
    ?rle

    # documentation of the `read.csv` function
    ?read.csv

Objects in memory
-----------------

    # list objects in memory
    ls()

    # delete objects from memory
    rm('variablename')

    # delete all objects
    rm(list = ls())

Navigating in the filesystem
----------------------------

    # current working directory
    getwd()

    # change to another directory
    setwd('/path/to/somewhere/else')

Extracting subsets from data frames
-----------------------------------

    # these are the same
    subset(airquality, Month == 5)
    subset(airquality, airquality[,'Month'] == 5)
    subset(airquality, airquality[,5] == 5)

Misc
----

Modulo operator:

    # 5 mod 3 is 2
    # 3 mod 5 is 3
    i %% n