---
creation_date: 2024-03-15
modification_date: 2024-03-15
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Meta
  - Topic/Obsidian
  - Status/WIP
aliases:
  - Maps of Content (Meta)
publish: true
permalink: meta/mocs
description: "An Overview of Using Maps of Content in Obsidian."
image:
cssclasses:
---

# Maps of Content (MOCs)

> [!SOURCE] Sources:
> 

## Contents

```table-of-contents
style: nestedList
minLevel: 2
maxLevel: 10
includeLinks: true
debugInConsole: false
```

## Overview

In [[Obsidian]], there's a concept called **Maps of Content**, or MOCs. MOCs are index notes with external links referencing various notes around a given context or topic. MOCs are a proven method for organizing and creating a path to navigate notes in Obsidian.

Folders are rigid and can quickly become overly complicated. Tags are too flexible and quickly become unmaintainable. MOCs provide a good middle ground.

## Structure

MOCs can quickly be created via the [[Dataview]] plugin:

````markdown
```dataview
list from [[]] and !outgoing([[]])
```
````

This snippet will list out all notes in the vault that link to the current note.

## Refinement

A useful implementation of an MOC is using it to quickly assess notes in the "INBOX".

Once a note gets created in the inbox, 

