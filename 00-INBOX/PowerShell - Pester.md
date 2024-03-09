---
creation_date: 2024-03-01
modification_date: 2024-03-01
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/NA
  - Topic/NA
  - Status/NA
aliases:
  - PowerShell - Pester
publish: true
permalink:
description:
image:
cssclasses:
---

# Pester

```powershell
$pesterArgs = [PesterConfiguration]::Default
$pesterArgs.Run.Path = '.'
$pesterArgs.Output.Verbosity = "Normal"
$pesterArgs.CodeCoverage.Enabled = $true
$pesterArgs.CodeCoverage.Path = ".\*.ps*1"
$pesterArgs.CodeCoverage.OutputFormat = 'JaCoCo'
$pesterArgs.CodeCoverage.OutputPath = "coverage.xml"
 
Invoke-Pester -Configuration $pesterArgs
```

After running this code you will have a coverage.xml file in JaCoCo format that can be used with [Report Generator](https://www.nuget.org/packages/ReportGenerator/) to create an HTML file. From the [NuGet page for Report Generator](https://www.nuget.org/packages/ReportGenerator/) I downloaded the package and changed the extension from ".nupkg" to ".zip". Now I can double click on the file to see its contents. In the tools folder, you will find several versions.