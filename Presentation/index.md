---
title       : Presentation for my shiny App
subtitle    : 
author      : Joe Crozier
job         : Learner
framework: revealjs
revealjs: {theme: solarized, transition: cube}
mode: selfcontained
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [shiny, ggplot2]            # {mathjax, shiny, ggplot2, quiz, bootstrap}
knit        : slidify::knit2slides
---

## The Coast Guard Academy PFE

Physical Fitness Exam (PFE) consisting of three parts:


### 1. Pushups


### 2. Situps


### 3. Run

--- .class #id 

## Recent Scoring Changes

The PFE was revamped and we'd like to examine what affect the new system had on scoring.

![alt text](line.png)
---

## Observe other trends

-We think that scores dip between 4th Class and 3rd class year, but we don't know why.

-With an interactive Shiny graph, we can examine different years or events to figure out why scores dip.

---

## Example of the Shiny Graph


![plot of chunk unnamed-chunk-1](assets/fig/unnamed-chunk-1-1.png) 



---

## Anything else to put on that?

Maybe split by Gender?

I'll have Total and Pushups, but allow run or curlups?

Anything else?




