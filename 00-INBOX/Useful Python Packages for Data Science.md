---
creation_date: 2024-03-01
modification_date: 2024-03-01
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/List
  - Topic/Python
  - Status/WIP
aliases:
  - Useful Python Packages for Data Science
publish: true
permalink:
description:
image:
cssclasses:
---

## Data Processing

### pandas

> [!NOTE] See Also: [[Python - pandas]]

Developed by Wes McKinney more than a decade ago, this package offers powerful data table processing capabilities. For people with a SAS background, it offers something like SAS data steps functionality. You can do sorting, merging, filtering etc. The key difference is in pandas, you call a function to perform these tasks.

By the way, I was really amazed to know that Wes McKinney was able to develop pandas after only a few years of Python experience. Some people are just really gifted!

His book [Python for Data Analysis](https://www.oreilly.com/library/view/python-for-data/9781491957653/) is highly recommended if you are just starting out your Python data science journey.

### numpy

> [!NOTE] See Also: [[Python - numpy]]

Pandas builds on top of another important package, numpy. So when you work with data you will often rely on this package for basic data manipulations. For example when you need to create a new column based on the age of the customer, you need to do something like:

```python
df['isRetired'] = np.where(df['age']>=65, 'yes', 'no')
```

### qgrid

An amazing package which allows you to sort, filter, and edit DataFrames in [[Jupyter Notebooks]].

## Graphing

### matplotlib

### seaborn

### plotly

## Modeling

### statsmodels

### scikit-learn

### lightgbm

### lime

##

