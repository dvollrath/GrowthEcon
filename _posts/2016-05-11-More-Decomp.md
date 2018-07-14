---
layout: post
title: More on Decomposing US Productivity Growth
published: true
category: feed
tags: sector slowdown
---

Tables, tables, tables. There are going to be lots of tables today. My last [post](https://growthecon.com/blog/Decomposition/) was about the decomposition of aggregate productivity growth into different components. "Within" growth occurs because labor productivity within sectors is growing. "Across" growth occurs because workers move from one sector to another. For the US recently, this "across" growth has been negative, meaning that people are shifting from high to low productivity sectors. Finally, there is "covariance" growth, which captures whether workers are moving into (or out of) sectors that have high productivity *growth*. This tends to be negative, meaning that workers are tending to move to sectors with low productivity growth. 

I did that decomposition using data at the 10-sector level, meaning it is very high level (Agriculture, Manufacturing, Construction, etc..). To dig a little deeper, in this post I've pulled down BEA data on industry-level output and full time equivalents (FTE) that is at a finer level of disaggregation. I end up with 70 industries, but I can only cover the time period of 1998 to 2014. For the geeks out there, this means I'm using this sort of bastardized NAICS 2 and 3 digit classification to match up with what the BEA reports. (Because **GOD FORBID** that the BEA uses precisely the same classification scheme for both output and FTE). Anyway, the data files I'm using, and a script to recreate what you see in this post, are linked at the bottom of this post. So feel free to play around.

Anyway, the data means that I can calculate labor productivity at the industry level for those 70 industries. I'll call this "productivity" from now own to save myself some typing. But productivity here is just output divided by FTE. So for each industry I know their productivity level and their share of total FTE's in the economy. That gives me all the information I need to do the within/across/covariance decomposition. 

I'll get to the overall decomposition below, but before that I think it's interesting to pick through the individual sectors themselves to see which ones are contributing positively and negatively to those different components of growth. 

I'm ultimately going to look at the growth of aggregate productivity for the 4 years 2010-2014. So to be consistent with the calculations, to start with we can look at the level of productivity and FTE shares in 2010. Here are the top 10 industries in terms of productivity in 2010, where productivity is measured in millions of 2009 dollars per FTE.

  | BEA Industry                          | Prod Level |
  |---------------------------------------|------------|
  |       Funds, trusts, and other fina.. |     5.72 |
  |       Real estate                     |   1.3753 |
  |     Oil and gas extraction            |   1.0038 |
  |       Petroleum and coal products     |   0.9037 |
  |   Utilities                           |   0.5026 |
  |     Pipeline transportation           |   0.4325 |
  |       Chemical products               |   0.4263 |
  |     Motion picture and sound record.. |   0.3476 |
  |     Mining, except oil and gas        |   0.3470 |
  |       Rental and leasing services a.. |   0.3342 |

I don't know exactly what "Funds, trusts, and other.." is, but it is hard to get the image of Scrooge McDuck swimming in his money out of my head. Anyway, the level of productivity here is off the charts compared to other industries. Which is great, but will end up being irrelevant for us because it effectively employs zero people. The other industries here are perhaps not surprsing: utilities, oil and gas, chemicals, mining. I guess I'm surprsed that "Real Estate" (think your broker, not your general contractor) is so high in productivity. But that's what you get earning 6% on every home transaction that takes place, I guess. 

Here are the bottom 10 industries in productivity:

  | BEA Industry                          | Prod Level |
  |---------------------------------------|------------|
  |       Administrative and support se.. |    .0614 |
  |       Apparel and leather and allie.. |    .0603 |
  |     Food and beverage stores          |    .0587 |
  |   Other services, except government   |    .0581 |
  |       Amusements, gambling, and rec.. |    .0577 |
  |     Educational services              |    .0575 |
  |     General merchandise stores        |    .0471 |
  |       Nursing and residential care .. |    .0430 |
  |       Social assistance               |    .0390 |
  |       Food services and drinking pl.. |    .0388 |

Food services is, just for scale purposes, roughly 10 times less productive per FTE than "Chemical products" or "Motion picture and sound recording". [*Also down here is educational services, and perhaps the inter-tubes can help me here. I can't find definitely where public-school teachers get reported. Are they here, or are they in "State/local government"?*] These are generally all service industries, which perhaps not surprsing. It's also not an indictment of services, by the way. These industries don't produce anything, but do provide their time, and hence you can't raise productivity by lowering the time input (like in manufacturing). 

Last, here are the top 10 industries in 2010 in terms of their share of FTEs. 

  | BEA Industry                          | FTE Share |
  |---------------------------------------|-----------|
  | General State/Local                   |    .1242 |
  |       Food services and drinking pl.. |    .0608 |
  |       Administrative and support se.. |    .0538 |
  |     Other retail                      |    .0504 |
  |   Other services, except government   |    .0463 |
  |   Construction                        |    .0450 |
  |       Ambulatory health care services |    .0445 |
  |   Wholesale trade                     |    .0438 |
  |       Miscellaneous professional, s.. |    .0390 |
  |       Hospitals                       |    .0365 |

The biggest users of FTE are again generally service industries. You can't get too jazzed up about that, because one of the reasons this looks this way is that the BEA sub-divides manufacturing down to very small levels, but leaves "General State/local government" as one giant category. If we broke down that category into "Police", "Fire", "DMV", etc. then this wouldn't show up as 12%. 

Anyway, that gives you some idea of what the static distribution of FTE and productivity across industries looks like. But we're really interested in productivity *growth*, and so what will matter for that are the *changes* in productivity and FTE shares from 2010 to 2014. 

To start, here are the 10 industries with the highest total growth in productivity for that 4-year period. There are not percentages, these are absolute changes in productivity. Again Scrooge McDuck has an outsized number here, and again it is going to be irrelevant for us ultimately.

  | BEA Industry                     | Prod Change |
  |----------------------------------|-------------|
  |       Funds, trusts, and other.. |   1.18 |
  |     Oil and gas extraction       |    .2692 |
  |     Water transportation         |    .0904 |
  |     Pipeline transportation      |    .0725 |
  |     Broadcasting and telecommu.. |    .0706 |
  |     Mining, except oil and gas   |    .0579 |
  |       Computer and electronic .. |    .0389 |
  |       Petroleum and coal produ.. |    .0253 |
  |       Rental and leasing servi.. |    .0249 |
  |     Data processing, internet .. |    .0238 |

"Computer and Electronic products" is the manufacturing of those goods. The rest are relatively self-explanatory. Remember that these represent the change over four years. So "Pipeline transportation" raised productivity by approximately 72,500 dollars per FTE between 2010-2014, or about 18,125 per year. 

Those sectors were doing well in terms of productivity. At the other end of the scale are the following 10 industries, which had the lowest productivity growth in the same period of time. 

  | BEA Industry                          | Prod Change |
  |---------------------------------------|-------------|
  |     Food and beverage stores          |   -.0134 |
  |       Miscellaneous manufacturing     |   -.0142 |
  |   Utilities                           |   -.0149 |
  |       Food and beverage and tobacco.. |   -.0160 |
  |       Legal services                  |   -.0176 |
  |       Securities, commodity contrac.. |   -.0180 |
  |       Real estate                     |   -.0189 |
  |       Waste management and remediat.. |   -.0282 |
  |     Motion picture and sound record.. |   -.0399 |
  |       Chemical products               |   -.0585 |

Chemical products had it bad in this period, and apparently so did movie studios. Maybe a surprise that securities and legal services had such poor productivity growth? I'm not going to start speculating on underlying causes for any of these numbers. 

The big point of the prior post was that while these numbers on raw productivity growth are interesting, they are not the whole story. We have to consider these alongside the allocation of workers across those sectors. Like I said above, the fact that "Funds, trusts, and other" is so productive will be essentially meaningless, but the decline in productivity in "Legal services" will be meaningful, because it employs a lot of people.

So let's look at the raw change in the share of FTE's employed by industry in the same 4-year period. Here are the 10 industries that had the biggest change in their FTE share.

  | BEA Industry                          | Chg. FTE Share |
  |---------------------------------------|----------------|
  |     Other retail                      |    .0044 |
  |       Administrative and support se.. |    .0038 |
  |       Social assistance               |    .0037 |
  |       Food services and drinking pl.. |    .0035 |
  |   Construction                        |    .0027 |
  |     Food and beverage stores          |    .0022 |
  |     Motor vehicle and parts dealers   |    .0022 |
  |     General merchandise stores        |    .0019 |
  |       Computer systems design and r.. |    .0016 |
  |       Ambulatory health care services |    .0013 |

What this tells us is that "Other Retail"'s share of total FTE in the economy rose by 4.4-tenths of one percentage point. The other thing that shows up here is that none of these industries with rapidly growing shares of FTE also show up on the table of top productivity growth. In fact, "Food and beverage stores" is growing in the share of FTE, but it was in the *bottom* ten of productivity growth in the prior table. This is an example of an industry with a negative covariance contribution - it is growing in FTE, but shrinking in productivity.

At the other end of the rankings are the 10 industries that lost FTE's the fastest. Here they are:

  | BEA Industry                          | Chg. FTE Share |
  |---------------------------------------|----------------|
  | State/Local Gov Enterprise            |   -.0009 |
  | Federal Gov Enterprise                |   -.0009 |
  |   Other services, except government   |   -.0010 |
  |       Computer and electronic produ.. |   -.0010 |
  |       Federal Reserve banks, credit.. |   -.0014 |
  |     Broadcasting and telecommunicat.. |   -.0016 |
  |       National defense                |   -.0018 |
  | Federal Civilian                      |   -.0020 |
  |       Hospitals                       |   -.0021 |
  | General State/Local                   |   -.0109 |

What is interesting here is that the list is dominated by public employees. "State/Local gov enterprises", "Federal gov enterprises", "National defense", "Federal civilian", and "General state/local" are all industries under the general "Government" heading. The big drop in state and local employment here is obvious. One other quick note is that "Federal Reserve banks, .." refers to the banking sector in general (those banks supervised by the Fed), and not specifically to the Federal Reserve banks themselves. One last interesting note is that "Broadcasting and telecommunications" shows up as another industry with a negative covariance contribution - it has growing productivity, but is shrinking in FTE. 

If you are still awake, then this still doesn't help us out much, because the changes in FTE themselves could be good or bad for aggregate productivity depending on whether they are high or low productivity industries to begin with. So let me show you some more tables that list the top/bottom 10 indutries in terms of their actual "within" or "across" contribution. 

To remind you, the decomposition of aggregate productivity looks like this:

$$
\Delta y_t = \sum_{j=1}^J \Delta y_{jt} s_{j0} + \sum_{j=1}^J \Delta s_{jt} y_{j0} + \sum_{j=1}^J \Delta y_{jt} \Delta s_{jt}.
$$

The first summation is the "within" term, with $y_{jt}$ being productivity in sector $j$, and $s_{j0}$ their share of FTE in 2010. The second summation is the "across" term, and the final summation is the "covariance" term.

Start with the within terms. Here are the top 10 industries in "within" contribution over the last 4 years. Each of the numbers in the table is an individual $\Delta y_{jt} s_{j0}$ in the first summation above.

  | BEA Industry                          | Within |
  |---------------------------------------|--------|
  |     Broadcasting and telecommunicat.. |    .0007 |
  |     Oil and gas extraction            |    .0004 |
  |       Computer and electronic produ.. |    .0003 |
  |     Management of companies and ent.. |    .0003 |
  |   Wholesale trade                     |    .0002 |
  |       Motor vehicles, bodies and tr.. |    .0001 |
  |     Publishing industries, except i.. |    .0001 |
  |       Computer systems design and r.. |    .0001 |
  |       Rental and leasing services a.. |    .0001 |
  |       Insurance carriers and relate.. |    .0001 |

Note that the rankings are not identical to the first table, which was just about productivity growth. This table is productivity growth *times* the industry's share of total FTE. You can see that "Funds, trusts, ..." have disappeared, as I mentioned, because they employ so few people. "Wholesale trade" appears here not because it has ridiculously high productivity growth, but because it employs a relatively big share of FTE. 

And here are the bottom 10,

  | BEA Industry                          | Within |
  |---------------------------------------|--------|
  |       Social assistance               |   -.0001 |
  |       Securities, commodity contrac.. |   -.0001 |
  |       Legal services                  |   -.0002 |
  |     General merchandise stores        |   -.0002 |
  |       Real estate                     |   -.0002 |
  |       Food and beverage and tobacco.. |   -.0002 |
  |     Other retail                      |   -.0003 |
  |     Food and beverage stores          |   -.0003 |
  |   Construction                        |   -.0003 |
  |       Chemical products               |   -.0004 |

This list looks similar to the one based purely on productivity, because these 10 industries all employ pretty big shares of FTE in the US. When the "Construction" industry experiences negative productivity growth, for example, this has a relatively big aggregate effect because it employs a lot of people. That's the "within" term at work.

Now, look at the top/bottom 10 industries in terms of their "across" contribution. This is the change in their share of FTE *times* their initial level of productivity, $\Delta s_{jt} y_{j0}$. 

  | BEA Industry                          | Across |
  |---------------------------------------|--------|
  |     Other retail                      |    .0003 |
  |   Construction                        |    .0003 |
  |       Administrative and support se.. |    .0002 |
  |     Motor vehicle and parts dealers   |    .0002 |
  |       Computer systems design and r.. |    .0002 |
  |       Motor vehicles, bodies and tr.. |    .0002 |
  |       Social assistance               |    .0001 |
  |       Food services and drinking pl.. |    .0001 |
  |     Food and beverage stores          |    .0001 |
  |       Ambulatory health care services |    .0001 |

The fact that these are positive means only that people are moving *into* these sectors. The terms could be large either because lots of people are moving in but an industry is low productivity ("Other Retail") or because a few people are moving in and the industry is high productivity ("Motor vehicles, bodies.."). Regardless, this table gives you an idea of which industries are expanding their contribution to aggregate productivity growth. 

At the other end, the bottom ten in "across" contribution are:

  | BEA Industry                          | Across |
  |---------------------------------------|--------|
  |       Legal services                  |   -.0001 |
  |       Chemical products               |   -.0001 |
  |       Hospitals                       |   -.0002 |
  |   Utilities                           |   -.0002 |
  |       Federal Reserve banks, credit.. |   -.0002 |
  | Federal Civilian                      |   -.0002 |
  |       Computer and electronic produ.. |   -.0002 |
  |       National defense                |   -.0004 |
  |     Broadcasting and telecommunicat.. |   -.0005 |
  | General State/Local                   |   -.0009 |
 
 These industries are losing FTE for sure. Banks, utilities, broadcasting, and government employment are shrinking. Yet because they also happen to be relatively high productivity, so this subtracts a lot from aggregate growth. As you can start to sniff out from these tables, the negatives in the bottom 10 outweight the positives in the top 10 of "across" terms. And this is where that aggregate negative for "across" contribution comes from. FTE is leaving sectors that are relatively high productivity, and flowing into sectors with relatively low productivity. 

 The last component of productivity is the covariance term. These are all so close to zero that they are not terribly interesting. And since there are already a ridiculous number of tables, let's just stop there. 

 What does this all lead to? We can add up the 70 individual within terms, the 70 individual across terms, and the 70 individual covariance terms to arrive at aggregate growth in productivity (remember, output per FTE). I did this for the 4-year period from 2010-2014, but also for all 4-year periods up to 2014. And that is what is in the following figure.

 ![US 4-year Decomposition](/assets/fig_bea_decomp_4.png)

 Similar to the last post, you can see that the combined "across" terms are negative recently. This drags down aggregate growth. The shift of workers out of government, legal services, hospitals, etc.. and into construction, admin, and retail pulls down aggregate growth. What we also see is that recently the "within" components are declining appreciably. While there are sectors that have growing productivity, this is largely offset by sectors where productivity growth is negative. 

 Is that a sign of a permanent change? There is nothing here to tell us that. Some of this is a function of looking at a relatively short 4-year time frame. If I did 10-year calculations, then there is nothing particularly funny-looking about 2014, it is just part of a general decline in "within" industry growth since about 2001. 

 One other thing to keep in mind when staring at the dip in "within" growth in 2014 and pondering whether this means we are inevitably doomed to be replaced by robots is that alot of this is driven by a surge in FTE in 2010-2014. This is easiest to see in a figure. Here's the 4-year rolling growth rates of value-added (output) separate from the 4-year rolling growth rate of FTE's.

 ![US FTE and VA](/assets/fig_bea_growth_4.png)

 What you can see is that part of the slowdown in growth in productivity (value-added per FTE) is due to the striking growth in FTE reported by the BEA between 2010-2014. The economy is adding workers, or hours, or both very rapidly, while output growth is not growing any more rapidly than normal. This makes productivity fall. If you look at individual industries (I'll spare you any more tables) you get a similar story. Many industries - including ones with high productivity to start with - have FTE growth that far outweighs their value-added growth, which makes their "within" productivity term negative. Why are industries adding FTE if they are not getting more out of them? 

 Is this just a prelude to a burst of growth in value-added as these workers get up to speed? Or is this an example of the economy pulling back in relatively low-productivity *workers*. We're now beyond anything I can do with the data I have here. Check back in a few years, and we can see whether this was just a temporary blip, or a real slowdown in "within" industry productivity growth.

 Last, here are the promised data files and Stata script.

 1. [BEA Value-added](/assets/bea_ip_data.dta)
 2. [BEA FTE](/assets/bea_fte_data.dta)
 3. [Stata do-file](/assets/2016-05-10-BEA-Setup.do)
