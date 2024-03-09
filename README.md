<head>
<link rel="apple-touch-icon" sizes="76x76" href="/apple-touch-icon.png?v=2.0">
<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png?v=2.0">
<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png?v=2.0">
<link rel="manifest" href="/site.webmanifest?v=2.0">
<link rel="mask-icon" href="/safari-pinned-tab.svg?v=2.0" color="#5bbad5">
<link rel="shortcut icon" href="/favicon.ico?v=2.0">
<meta name="apple-mobile-web-app-title" content="KaaS">
<meta name="application-name" content="KaaS">
<meta name="msapplication-TileColor" content="#2b5797">
<meta name="theme-color" content="#ffffff">
</head>
<h1 align="center">No Clocks Knowledge Vault</h1>
<p align="center">
    <a href="https://publish.obsidian.md/kaas-published/">Website</a> |
    <a href="https://github.com/jimbrig/kaas">GitHub Repo</a>
</p>
<h4 align="center">Curated Knowledge for the Masses</h4>

## Welcome

Welcome to the Knowledge Vault for [No Clocks, LLC]().

Inside is a wealth of knowledge curated over years of pursuing and widening out knowledge across the technology sector.

The vault is structured loosely as a *[Zettelkasten]()*, or a collection of interlinked *[Atomic Notes]()* about
anything that has resonated with our work and was deemed worth of including.

Consider this a *Digital Garden*. It is a garden that needs to be maintained and cared for overtime to produce fruitful outcomes.

## Contents

* [Welcome](README.md#welcome)
* [Roadmap](README.md#roadmap)
* [About](README.md#about)
  * [Publishing Setup](README.md#publishing-setup)
  * [Structure: Maps of Content](README.md#structure-maps-of-content)
* [Content](README.md#content)
  * [Code Snippets](README.md#code-snippets)
  * [Lists](README.md#lists)
  * [Tools](README.md#tools)

## Roadmap

- [ ] TODO

## About

Check out the `Meta/` Folder for details about this Vault and its setup:

* *Meta*
  * [About](2-Areas/Meta/About.md)
  * [Publish Workflow](2-Areas/Meta/Publish%20Workflow.md) *(MkDocs version only, not Obsidian Publish)*
  * [How I Take Notes](2-Areas/Meta/How%20I%20Take%20Notes.md)
  * [Vault Setup](2-Areas/Meta/Vault%20Setup.md)
  * [Structure](2-Areas/Meta/Structure.md)

The [Changelog](Changelog.md) is also a good *Meta* resource.

*Launch this vault directly via the **Obsidian URI Schema**: `obsidian://open?vault=knowledge-vault`.*

### Publishing Setup

* This repository has three main branches: [main], [develop], and [gh-pages].
  * The [main] branch is a representation of the [develop] branch, but with all obsidian wiki-links converted to GitHub markdown links for display on GitHub as well as `_README.md` files converted to `README.md` for display on GitHub.
  * The [develop] branch mirrors what I actually work with while inside the Obsidian application and gets sync'd automatically.
  * The [gh-pages] branch is deployed using [MkDocs]() and [GitHub Actions]().
  * Links are converted using the rust library [Obsidian-Export].
  * Links for deployment are converted using the [mkdocs-roamlinks]() plugin.

*Check out the various [GitHub Actions] utilized to enable this entire process.*

### Structure: Maps of Content

If this vault serves as my version of [a second brain](0-Slipbox/Building%20a%20Second%20Brain.md), then *Maps of Content* or *MOC's* are the underlying [synapse](3-Resources/Dictionary/Synapse.md)'s connecting the neurotransmitters of the brain together to form a complex, structured system.

In other words MOC's serve as structural, index notes that list related [Atomic Notes](0-Slipbox/Atomic%20Notes.md) in a single location.

Utilize *Maps of Content* (MOCs) to navigate the vault efficiently:

Some Maps of Content to consider are:

## Content

The vault has a variety of content including, but not limited to:

* Code Snippets
* Lists of Resources
* Checklists
* Slipbox Atomic Notes
* Guides and How-To's
* Lessons Learned
* Daily Notes
* Templates
* Best Practices
* Documentation
* Tools by Category
* Mindsweeps
* Goals and Learning Notes
* Project Support Notes
* Notes about People and Agendas
* Definitions
* Embedded Websites
* Kanban Boards
* MindMaps
* Highlights from a variety of sources
* Clippings from the Web
* Podcast Notes

And More!

### Code Snippets

See the *Code* folder's README for details on all of the code snippets included inside this vault.

---

[main]: https://github.com/jimbrig/KaaS-New/tree/main
[develop]: https://github.com/jimbrig/KaaS-New/tree/develop
[gh-pages]: https://github.com/jimbrig/KaaS-New/tree/gh-pages
[Obsidian-Export]: https://github.com/zoni/obsidian-export
[GitHub Actions]: https://github.com/jimbrig/KaaS-New/tree/main/.github/workflows
