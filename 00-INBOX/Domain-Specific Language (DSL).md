---
creation_date: 2024-03-20
modification_date: 2024-03-20
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Definition
  - Topic/Dev
  - Status/Complete
aliases:
  - Domain-Specific Language
  - DSL
publish: true
permalink:
description:
image:
cssclasses:
---

# Domain-Specific Language (DSL)

> [!SOURCE] Sources:
> - *[Domain-specific language - Wikipedia](https://en.wikipedia.org/wiki/Domain-specific_language)*

## Contents

```table-of-contents
style: nestedList
minLevel: 2
maxLevel: 10
includeLinks: true
debugInConsole: false
```

## Overview

A **domain-specific language** (**DSL**) is a [computer language](https://en.wikipedia.org/wiki/Computer_language) specialized to a particular application [domain](https://en.wikipedia.org/wiki/Domain_(software_engineering)). This is in contrast to a [general-purpose language](https://en.wikipedia.org/wiki/General-purpose_language) (GPL), which is broadly applicable across domains. There are a wide variety of DSLs, ranging from widely used languages for common domains, such as [[Hyper Text Markup Language (HTML)|HTML]] for web pages, down to languages used by only one or a few pieces of software, such as [MUSH](https://en.wikipedia.org/wiki/MUSH) soft code. 

DSLs can be further subdivided by the kind of language, and include domain-specific [*markup* languages](https://en.wikipedia.org/wiki/Markup_language), domain-specific [*modeling* languages](https://en.wikipedia.org/wiki/Modeling_language) (more generally, [specification languages](https://en.wikipedia.org/wiki/Specification_language)), and domain-specific [*programming* languages](https://en.wikipedia.org/wiki/Programming_language). Special-purpose computer languages have always existed in the computer age, but the term "domain-specific language" has become more popular due to the rise of [domain-specific modeling](https://en.wikipedia.org/wiki/Domain-specific_modeling). Simpler DSLs, particularly ones used by a single application, are sometimes informally called **mini-languages**.

The line between general-purpose languages and domain-specific languages is not always sharp, as a language may have specialized features for a particular domain but be applicable more broadly, or conversely may in principle be capable of broad application but in practice used primarily for a specific domain. For example, [Perl](https://en.wikipedia.org/wiki/Perl) was originally developed as a text-processing and glue language, for the same domain as [AWK](https://en.wikipedia.org/wiki/AWK) and [shell scripts](https://en.wikipedia.org/wiki/Shell_script), but was mostly used as a general-purpose programming language later on. By contrast, [PostScript](https://en.wikipedia.org/wiki/PostScript) is a [Turing-complete](https://en.wikipedia.org/wiki/Turing-complete) language, and in principle can be used for any task, but in practice is narrowly used as a [page description language](https://en.wikipedia.org/wiki/Page_description_language).

## Usage

The design and use of appropriate DSLs is a key part of [domain engineering](https://en.wikipedia.org/wiki/Domain_engineering "Domain engineering"), by using a language suitable to the domain at hand – this may consist of using an existing DSL or GPL, or developing a new DSL. [Language-oriented programming](https://en.wikipedia.org/wiki/Language-oriented_programming "Language-oriented programming") considers the creation of special-purpose languages for expressing problems as standard part of the problem-solving process. Creating a domain-specific language (with software to support it), rather than reusing an existing language, can be worthwhile if the language allows a particular type of problem or solution to be expressed more clearly than an existing language would allow and the type of problem in question reappears sufficiently often. Pragmatically, a DSL may be specialized to a particular problem domain, a particular problem representation technique, a particular solution technique, or other aspects of a domain.

## Implementation

A domain-specific language is created specifically to solve problems in a particular domain and is not intended to be able to solve problems outside of it (although that may be technically possible). In contrast, general-purpose languages are created to solve problems in many domains. The domain can also be a business area. Some examples of business areas include:

- life insurance policies (developed internally by a large insurance enterprise)
- combat simulation
- salary calculation
- billing

A domain-specific language is somewhere between a tiny programming language and a [scripting language](https://en.wikipedia.org/wiki/Scripting_language "Scripting language"), and is often used in a way analogous to a [programming library](https://en.wikipedia.org/wiki/Programming_library "Programming library"). The boundaries between these concepts are quite blurry, much like the boundary between scripting languages and general-purpose languages.

## Patterns

There are several usage patterns for domain-specific languages:

- Processing with standalone tools, invoked via direct user operation, often on the command line or from a [[Makefile]] (e.g., `grep` for regular expression matching, `sed`, `lex`, `yacc`, the [[GraphViz]] toolset, etc.)
- Domain-specific languages which are implemented using programming language macro systems, and which are converted or expanded into a host general purpose language at compile-time or real-time
- **[[Embedded Domain-Ppecific Language (eDSL)]]**, implemented as libraries which exploit the syntax of their host general purpose language or a subset thereof while adding domain-specific language elements (data types, routines, methods, macros etc.). (e.g. [[jQuery]], [[React]]), [[Embedded SQL]], [[LINQ]])
- Domain-Specific languages which are called (at runtime) from programs written in general purpose languages like [[C]] or [[Perl]], to perform a specific function, often returning the results of operation to the "host" programming language for further processing; generally, an interpreter or [virtual machine](https://en.wikipedia.org/wiki/Virtual_machine) for the domain-specific language is embedded into the host application (e.g. [format strings](https://en.wikipedia.org/wiki/Format_string), a [regular expression engine](https://en.wikipedia.org/wiki/Regular_expression))
- Domain-specific languages which are embedded into user applications (e.g., macro languages within spreadsheets) and which are (1) used to execute code that is written by users of the application, (2) dynamically generated by the application, or (3) both.

Many domain-specific languages can be used in more than one way. DSL code embedded in a host language may have special syntax support, such as regexes in `sed`, `AWK`, `Perl` or [[JavaScript]], or may be passed as strings.

## Idioms

In programming, [idioms](https://en.wikipedia.org/wiki/Programming_idiom "Programming idiom") are methods imposed by programmers to handle common development tasks, e.g.:

- Ensure data is saved before the window is closed.
- Edit code whenever command-line parameters change because they affect program behavior.

General purpose programming languages rarely support such idioms, but domain-specific languages can describe them, e.g.:

- A script can automatically save data.
- A domain-specific language can parameterize command line input.
