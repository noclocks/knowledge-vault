---
creation_date: "<% tp.file.creation_date("YYYY-MM-DD") %>"
modification_date: "<% tp.file.last_modified_date("YYYY-MM-DD") %>"
author: "Jimmy Briggs <jimmy.briggs@jimbrig.com>"
tags:
  - Type/Project
  - Type/Readme
  - Status/WIP
aliases:
  - <% tp.file.folder(false) %>
  - <% tp.file.folder(false) + ' Project' %>
cssclasses:
  - readme
publish: true
---

# <% tp.file.folder(false) %>

<% tp.file.include("[[Template-TOC]]") %>

## Overview

> [!NOTE] About
> This folder houses <% tp.file.cursor(1) %>.

## Team

## Project Tasks


> [!SOURCE] Title
> Contents


```todoist
filter: #<% tp.file.folder(false) %>
```

### Completed Tasks

```todoist
filter: #<% tp.file.folder(false) %> & completed
```

## Project Plan

<% tp.file.include("[[Template-Backmatter]]") %>

<% tp.file.include("[[Template-Backlinks]]") %>
