---
creation_date: 2024-03-01
modification_date: 2024-03-01
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/NA
  - Topic/NA
  - Status/NA
aliases:
  - How to Convert HTML Website to React
publish: true
permalink:
description:
image:
cssclasses:
---

# How to Convert HTML Website to React

## Step 1) Turn HTML Pages in React Components

When you **convert HTML to React site**, you need to turn web pages into [[React Components]]. 

Furthermore, if you only have one page, you can create a folder called `components` under the `src` folder. Then, you need to create a single `.jsx` file there like an `index.jsx`. 

After creating the `index.jsx` file, create a [[React Component]] within an `index.jsx`, and then copy and paste the body of your static [[HTML]] file to the return statement of that component. 

If your site has more than one page, make sure you create a separate pages folder under the `src` folder and create a `.js` file for each [[HTML]] page of your website. 

After that, create [[React Components]] for each file or page and copy-paste the body of the HTML files into the React components.


## Step 2) Fix Syntax

After turning the web pages into React components, **convert HTML to JSX.** For this, you need to correct the syntax of your plain HTML code into the .jsx file. Furthermore, you need to make the following changes:

1. Change class to className
2. Change style props from strings to objects, and change the BBQ-casing of CSS props to camelCase
3. End the self-closing tags

## Step 3: Add CSS to React Components

Once you have corrected the syntax of your plain **HTML to JSX**, you need to add your CSS to the React components. Furthermore, create a styles folder under the SRC folder and put all your CSS files into that folder. Then, start importing the corresponding CSS for each page. 

## Step 4: Install dependencies of your web page

Installing the dependencies of your web page (i.e., Font-Awesome, Bootstrap, etc.) that were recently delivered via a content delivery network is recommended to be installed via npm or yarn. Furthermore, try to find the corresponding React module for your component and install it within your **React app**. After that, import them to their corresponding components/pages. 

## Step 5: Decompose pages within React environment

Finally, you need to break down each page into smaller, reusable components within React.