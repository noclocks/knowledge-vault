---
creation_date: <% tp.file.creation_date("YYYY-MM-DD") %>
modification_date: <% tp.file.last_modified_date("YYYY-MM-DD") %>
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Readme
  - Topic/Meta
  - Status/Ongoing
aliases:
  - <% tp.file.folder(false) %>
  - <% tp.file.folder(false) + ' Readme' %>
publish: true
cssclasses:
  - readme
---

# <% tp.file.folder(false) %>

<% tp.file.include("[[Template-TOC]]") %>

## Overview

> [!NOTE] About
> This folder houses <% tp.file.cursor(1) %>.

## Notes

```dataview
LIST FROM "<% tp.file.folder(true) %>" AND -"CHANGELOG" AND -"<% tp.file.folder(true) %>/_README"
```

<% tp.file.include("[[Template-Backmatter]]") %>

<% tp.file.include("[[Template-Backlinks]]") %>
