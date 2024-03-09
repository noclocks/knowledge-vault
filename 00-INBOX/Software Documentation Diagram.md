---
creation_date: 2024-03-05
modification_date: 2024-03-05
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Topic/Dev
  - Topic/Docs
aliases:
  - Software Documentation Diagram
publish: true
cssclasses:
  - mermaid
---


```mermaid
graph TB
  
  subgraph software[Software Documentation]
    direction TB
  end
  
  subgraph process[Process Documentation]
    direction TB
    planning[Planning Documentation]
    progress[Progress Reports]
    working[Working Materials]
    specs[Specifications for Coding and Design]
  end
  
  subgraph product[Product Documentation]
    direction TB
    reqs[Requirements Documentation]
    architecture[Architecture Design Documentation]
    src[Source Code]
    api[API Documentation]
    guides[Guides and Manuals]
    marketing[Marketing Strategy and Research Documentation]
  end

  software --> process --> planning --> progress --> working --> specs
  software --> product --> reqs --> architecture --> src --> api --> guides --> marketing
```

- [[Mermaid Diagrams]]
- [[Technical Documentation]]