---
creation_date: 2024-03-08
modification_date: 2024-03-08
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/NA
  - Topic/NA
  - Status/NA
aliases:
  - VBA - PowerQuery Module
publish: true
permalink:
description:
image:
cssclasses:
---

## Code

### Testing Query Existence

- Function: `DoesQueryExist`

```vb
Function DoesQueryExist(ByVal QueryName As String) As Boolean
  
  Dim Qry As WorkbookQuery

  DoesQueryExist = False
  
  If (ThisWorkbook.Queries.Count = 0) Then
    DoesQueryExist = False
    Exit Function
  End If

  For Each Qry In ThisWorkbook.Queries
    If (Qry.Name = QueryName) Then
      DoesQueryExist = True
      Exit Function
    End If
  Next Qry

End Function
```

### Importing / Loading Queries

### Exporting Queries

### Creating New Queries

### Refreshing

```vb
Const Prefix$ = "Query - "

Sub RefreshQueryConnections()
  
  Dim WBConn As WorkbookConnection

  For Each WBConn In ActiveWorkbook.Connections
     If StartsWith(WBConn.Name, Prefix) Then WBConn.Refresh
  Next WBConn
  
End Sub

Sub RefreshQueries()
  
```

### Data Model