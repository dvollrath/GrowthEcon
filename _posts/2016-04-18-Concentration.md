---
layout: post
title: Concentration and Aggregate GDP
published: false
category: feed
---

A whole raft of posts and articles has shown up recently regarding increased concentration within industries, more lenient anti-trust enforcement, and the increasing share of corporate profits in output. This has been tied to the slowdown in wages over the last few decades, increasing inequality, and even to slower aggregate growth. 

How would all that work? The arguments made by those doing the concentrating of industries are that they promote efficiency, productivity, and hence growth. So what follows is a little model that I think is useful for thinking about how this all fits together.

Start with the following relationship that defines the demand for good $Y_i$ relative to total output, $Y$, as a function of the price of good $i$, $P_i$, relative to the overall price level, $P$. This overall price level is like the price of a "bucket" of output consisting of lots of different goods. 

$$
\frac{Y_i}{Y} = \left(\frac{P_i}{P}\right)^{\theta},
$$

where $\theta$ captures how elastic demand for $Y_i$ is with respect to the price. The larger is $\theta$, the more that demand for $Y_i$ will adjust to small changes in $P_i$. High elasticity, flat demand curve. Flat demand curve, big swings in output for small price changes. The logic then runs in reverse for small values of $\theta$. 

Just to note, this form of the demand function is the result of a typical Dixit-Stiglitz CES aggregator. The actual form of that kind of utility function (or production function for "final output") looks like a mathematical mess, but it is all in the service of getting to the above relationship, which is relatively simple.

An important thing to notice here is that $Y_i$ is rising with $Y$ for a given relative price ratio. That is, demand for each individual good is rising with overall output. Because goods are complements to some extent, if the economy produces lots of *other* goods, then the demand for any individual good goes up. So the more goods the better. *This assumption that there are complementarities in demand at some level is crucial for the argument that concentration is bad for aggregate GDP.* 

Before we even get on with any math, you can see this point. If all goods were perfectly substitutable, so $\theta$ was infinity, then we wouldn't care about concentration. We'd *want* the single most productive firm in the economy to use all the inputs to produce their good(s), because having lots of their good(s) at really cheap prices is better than having lots of different types of goods at higher prices. But if we do care about the variety of goods available, then anything that limits the variety - concentration? - is bad. I think it is non-controversial to say that there is some preference for varieties. A good example here is the wailing you heard from Starwood Hotels patrons bemoaning their buyout by Marriott. Or the wailing you hear when a local restaurant gets replaced by an Applebee's. But that is a working assumption, not a fact.

#### Skip this section if you trust my math
What follows is now the math to establish more concretely how concentration plays into aggregate outcomes. Each types of good, $Y_i$, is produced by a single firm that is a monopolist in providing this good. Think of these as brands, like Apple. It's not that someone else (Samsung) cannot produce a similar good, but no one else can build *an iPhone*. Because these firms are each a monopolist in their own good, they do not take the price of their good as given, but internalize the demand curve when they make pricing decisions. That is, they know how you will react to their changes in price.

Each firm uses labor (no capital) to produce their good, so profits are

$$
\pi_i = P_i Y_i - W N_i
$$

where $W_i$ is the wage they have to pay, and $N_i$ is the number of workers they hire. Firms take the wage as given. They produce using $Y_i = A_i N_i$, where $A_i$ is their level of productivity. They maximize profits by selecting a number of workers, $N_i$, taking into account how their price, $P_i$, and output, $Y_i$ are related from the demand relationship I gave above. This means that for any individual firm, the aggregate level of $Y$ and $P$ matter for their production choices. We'll get back to that.

After messing around with this profit maximization problem, you'll get the following condition for optimal firm pricing

$$
P_i = \frac{\theta}{\theta - 1}\frac{W}{A_i}.
$$

The price a firm charges has a markup, $\theta/(\theta-1) > 1$, over marginal cost, $W/A_i$. The markup is that thing I've talked about before when doing productivity accounting. This model just has a very specific form for the markup. 

The bigger is $\theta$, the more substitutable are goods, the more price-sensitive consumers are, and hence the firm cannot raise their price without losing lots of business. Hence the markup goes to one as $\theta$ gets really big. On the other hand, if goods are not substitutable, people are price in-sensitive, and the markup gets really big.

#### Jump back in here if you skipped the math
There are $M$ individual firms, which I can use along with some adding up conditions (the sum of expenditure on each good has to equal total expenditure on all goods) and some algebra to get an expression for the real wage, $W/P$.

$$
\frac{W}{P} = \frac{\theta-1}{\theta} \left(\sum_i^M A_i^{\theta-1} \right)^{1/(\theta-1)}.
$$

On the right is something like the average productivity level of firms (the summation term involving $A_i$). If all the $A_i$ go up, then so does the real wage. More productivity, higher real wages. The value of $\theta$ plays a role in the summation term in telling us how the distribution of $A_i$ across firms matters; this is interesting but something for a different post, I think. 

You can also solve for profits as a share of total GDP. Sparing you the math, this will give you

$$
\frac{\sum_i \pi_i}{PY} = \frac{1}{\theta}
$$

which has this nice simple structure. The higher is $\theta$, the lower the profit share. The more capable or willing we are of substituting across varieties, the less market power each firm has, and the lower their profits are as a share of GDP. 

What's really important here for us is the role of $M$. With this market structure, the real wage is *rising* with $M$. This comes from the original demand function I put up, and the assumption I mentioned that goods were complements to some extent. 

Limiting $M$ through concentration limits the real wage as well. Fewer varieties means we have less ability to substitute away from the ones available, and implicitly each remaining firm has more market power. The Marriott/Starwood merger means you'll pay more for the same type of service (or get less service for the same price), because you cannot threaten to go to a different hotel chain.

Real wages are lower when $M$ falls, but what about profits? You can solve back for profits of a firm and get the following expression for real profits

$$
\frac{\pi_i}{P} = Y A_i^{\theta-1} \left(\frac{P}{W}\right)^{\theta-1} \frac{(\theta-1)^{\theta-1}}{\theta^{\theta}}.
$$

The clear thing here is that real profits of firm $i$ depend *inversely* on the real wage. So a declining real wage is good for profits. Meaning a lower level of $M$ is good for profits. We've thus got a model in which concentration raises profits relative to real wages, *holding constant productivity levels*.

But do real wages actually *fall*? The claim in many mergers or concentrating industries is that productivity will be much higher afterwards. 

#### Aggregate Effects
The expression for profits, though, also includes the level of $Y$, total output. The bigger is the economy, the higher are profits. Reducing $M$ presumably lowers $Y$ as well, so this should act as a drag on profits.

Firms, though, likely take this $Y$ as given. The choice of Marriott and Starwood to merge, for example, I'm sure didn't take into account their effect on overall GDP. And thus if we've got lots of industries consolidating at once, $Y$ may be pulled down even though none of them considered this consequence. And as this initial consolidation lowered profits, perhaps they use that as motivation for further consolidation??

Anyway, the role of $Y$ here means that while we can figure out how concentration, lower $M$, leads to lower real wages and higher profits, it doesn't tell us what happens to aggregate GDP, if anything. 

For that, we need to know firms *expectations* of $Y$. Each firms level of demand depends on the aggregate size of the economy, which in turn depends on each firms production. So if all firms believe output will be high, it will be, and vice versa. 

If you want to make the case that concentration has been bad for aggregate output, $Y$, in this model, then you need to make the case that concentration has created a situation where expectations of aggregate output are lower. 

Oh, by the way, don't tell me that we can solve for $Y$ explicitly by assuming that firms labor use has to add up to the total labor force. What level of total labor? Why should I believe that $\sum_i N_i$ is necessarily equal to the "full employment" level of employment? Any level of output, and hence any number of workers, can be an equilibrium in this model. So any level of total employment less than "full employment" can be an equilibrium as well. 