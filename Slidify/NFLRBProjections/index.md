---
title       : I'm all about the base (salary)
subtitle    : Projecting productivity for the NFL's most replaceable position
author      : Lawrence Lau
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax, quiz, bootstrap]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides

--- 

## Introduction

Football is big business and in America the NFL is king.  In the first 30 days of the 2015 free agency period, teams signed players to contracts worth a total of $1.8 Billion.  

One of the biggest names signed during that period was Running Back DeMarco Murray.  Murray had spent his first 4 years with the Dallas Cowboys, 3 of which were riddled with injuries and missed games.  In his 4th season, 2014, he managed to stay healthy and exploded to lead the NFL in rushing with 1,845 yards on 392 carries.  Despite that, the Cowboys were hesitant to sign Murray to a lucrative long-term deal that would pay him as one of the top running backs in football.  They were concerned about his proneness to injury and the high number of carries he had in 2014.  

Debates across NFL fandoms raged:  was it better to let the league rushing leader walk or was it better to sign him?  Would he be able to replicate his 2014 production after such a heavy workload? Everyone had opinions, but only the knowledgeable had credibility through facts.

This app provides statistical insight into running back performances the year after they've gained 1800+ yards.  It takes historical data and returns a prediction of next year's total yards and attempts given input of this year's yards and this year's number of carries.


--- &radio

## Little known fact: What NFL position averages the shortest career? 

1. Kickers & Punters
2. Quarterbacks
3. Cornerbacks
4. Wide Receivers
5. _Running Backs_

*** .hint 

Who takes the most punishment?
*** .explanation 

Running backs average 2.57 years in the league.  


--- 

## Average NFL career length

![plot of chunk unnamed-chunk-1](assets/fig/unnamed-chunk-1-1.png) 


---

## So now...

knowing that running backs tend to have the shortest shelf life, use the app to estimate hypothetical situations and put your General Manager hat on to gauge whether or not the player should be re-signed.  Have fun!

[NFLRBProjection App](https://ll8054.shinyapps.io/NFLRBProjections/)
