---
layout: post
title: Aggregate Productivity versus Aggregate Technology ... Again
published: true
category: feed
tags: slowdown markup
---

You can file this as another example of how measured aggregate TFP growth is like a trash can. It happens to include aggregate technology (which got tossed in there by accident while cleaning up kitchen), but also all sorts of other junk (like leftover coffee grounds). Today's example shows that even if you are smart about how you construct your measure of aggregate TFP growth, you can still end up with some garbage in there because of aggregation issues. I know this is pushing the analogy, but actually measuing aggregate *technology* is like trying to wipe up just the waffle crumbs your kids left behind, but *not* the drops of syrup.

Let me try to give the English-language, and non-garbage related, version of this before turning to the math. To calculate TFP growth, we look at how fast aggregate GDP grew relative to how fast aggregate input use grew. But there is a discrepancy about how we measure GDP growth and how we measure input growth. Aggregate GDP growth is a summation of the growth rate of each individual sector, with each weighted by how big a part of GDP they are. Manufacturing is about 12% of GDP, so a 3% growth rate of manufacturing output would add 0.12 x 0.03 = 0.0036 to total GDP growth, or about one-third of one percentage point. 

On the other hand, aggregate input growth is the summation of the growth rate of inputs of each individual sector, but with each weighted by how big a part of total *costs* they are. So if manufacturing is about 10% of total costs, a 2% growth rate of input use would add 0.10 x 0.02 = 0.002 to total input growth, or about one-fifth of one percentage point. Why costs, and not GDP? We want our measure of total input growth to reflect how inputs are really used across sectors, not how output is valued across sectors. 

Once we're measuring aggregate GDP growth by weighting sectors by their share of GDP, but measuring input growth by weighting sectors by their share of costs, we've created a problem. If there are differences in market power (and hence profits) between sectors, then a sector's share of GDP is no longer equal to its share of costs. For a sector with a big profit share, it would look over-weighted in GDP growth, but under-weighted in input growth. If its input use is growing, this will show up as *higher* aggregate TFP growth. The opposite case can also happen. If we have a sector with a very small profit share, it will look under-weighted in GDP growth, but over-weighted in input growth. If it has rapid input growth, this will show up as *lower* aggregate TFP growth. 

But neither case reflects any actual technological change. We're just moving inputs from one sector to another. Once we start aggregating sectors, all the differences in market power between sectors are going to stick to aggregate TFP like the drops of syrup to the waffle crumbs. 

This holds true even though we're being really smart about how we calculate the input growth, and I was reminded of this in class when a student presented a paper by [John Fernald and Brett Neiman](https://ideas.repec.org/a/aea/aejmac/v3y2011i2p29-74.html) that happens to be about Singapore. They construct a measure of aggregate TFP growth, and show how it contains both aggregate technology growth but also an adjustment term that picks up on these differences between sectors in their cost and GDP shares. This is true despite the fact that using cost shares for input growth is the right thing to do (as opposed to just using the GDP shares over again, basically).

What follows next is the math behind this, and then I'll pick up again on the English explanation and try to think through how this might be applicable to the US productivity slowdown.

### In Math
Let's back up a step, to review what the issue may be. If I want to calculate a measure of TFP growth, then I want to calcualte the difference between the growth rate of output and the growth rate of "inputs". 

$$
\% \Delta TFP = \% \Delta GDP - \% \Delta Inputs
$$

But constructing the growth rate of inputs is non-trivial. There are multiple inputs (capital and labor, at least), and so I need some way to sum up the growth rate of all the inputs into a single measure of the growth rate of inputs. Basically, I need to subtract off the growth rates of all the inputs, but I need to scale each of them by how important they are to production. To be more precise,

$$
\% \Delta TFP = \% \Delta GDP - \omega_K \% \Delta K - \omega_L \% \Delta L
$$

Here, I'm assuming there are two inputs, capital and labor. The $\omega_K$ and $\omega_L$ measure how important each is to production. I need those because a 10% increase in capital, for example, doesn't translate directly into a 10% increase in GDP, because of diminishing returns. I want the $\omega_K$ to capture these diminishing returns, meaning I want the elasticity of GDP with respect to capital. And there is a similar story for labor.

I've mentioned before here that a traditional way of measuring these is to assume that $\omega_L$ is equal to labor's share of GDP, meaning total wages divided by GDP, and that $\omega_K$ is just $1 - \omega_L$. This would be fine only under some very specific conditions: zero profits and constant returns to scale. And the world might not work that way. 

A more robust way of doing this is to use the capital's share of total *costs* to measure $\omega_K$, and labor's share of total *costs* to measure $\omega_L$. This doesn't require an assumption about either profits or constant returns to scale. All we need to believe is that firms are cost-minimizers. With cost minimizers, the cost share of an input will be equal to the elasticity of GDP with respect to that input, and we're all good. 

Except that we might not be good. The problem is that when we have multiple sectors (or firms), to add up to find the growth rate of GDP, we use each sector's share of GDP as a weight. For an example, I'm going to go with two sectors, manufacturing and services. 

$$
\% \Delta GDP = \frac{P_M Y_M}{GDP}  \% \Delta Y_M + \frac{P_S Y_S}{GDP}  \% \Delta Y_S
$$

The bigger the fraction of GDP made up of services, for example, the more important the growth rate of services is for aggregate growth in GDP. If you're unsure about that, just ask yourself what the growth rate of GDP would be if there were no manufacturing sector, only services. 

To get the measure of TFP growth, I still need those $\omega_K$ and $\omega_L$ weights. And for those weights I need the cost share of capital and labor at the *aggregate* level. To calculate the aggregate cost share of capital, for example, I would use

$$
\omega_K = \frac{Costs_M}{Costs}\frac{RK_M}{Costs_M} + \frac{Costs_S}{Costs}\frac{RK_S}{Costs_S}
$$

where R is the rental rate of capital, and $K^M$ and $K^S$ are the actual amounts of capital used by manufacturing and services. Writing it this way, the ratio $RK^M/Costs^M$ is the share of capital in the costs of manufacturing, and similar for services. But I weight those by manufacturing's (or service's) share of total costs. Again, the effect of an individual sector depends on how big it is in the economy, except now we measure that size by costs, not by GDP. There is an essentially identical equation for $\omega_L$, only using total wages instead of the total cost of capital within each sector.

You can start to get a flavor of the problem now. We are aggregating GDP growth by using shares of *GDP*, but we are aggregating cost shares by using shares of *Costs*. This is a problem once we have either sector earning profits, and thus their share of GDP is not the same thing as their share of costs. In particular, if manufacturing (say) earns profits, then its share of GDP is necessarily bigger than its share of total costs. $P_M Y_M / GDP > Costs_M/Costs$.

Fernald and Neiman work out just the effect that this has on measured TFP growth. To kind of match their analysis, and because it helps simplify, let's assume that manufacturing earns profits, while services do not. Then what they show is that you can write

$$
\% \Delta TFP = \% \Delta Technology + \frac{s_{\Pi}}{1-s_{\Pi}}\left(1 - \frac{P_M Y_M}{GDP}\right)\left( \% \Delta Inputs_M -  \% \Delta Inputs_S \right).
$$

The growth rate of *measured* TFP (the thing on the left) combines two terms. The first term on the right is the "true" growth rate of technology. The second term captures the effect of having sectors with different profit shares. We can take each part of that second term in turn

1. $s_{\Pi}/1-s_{\Pi}$: This is the ratio of profits to costs in the aggregate economy. The larger this is, the bigger an impact this adjustment to TFP growth gets. This ratio will be relatively big when manufacturing is a big fraction of the economy, and relatively small when manufacturing is a small fraction. 

2. $1 - P_M Y_M/GDP$: This captures how important manufacturing is in the economy. If manufacturing made up all of GDP, then this whole second term would disappear, as the aggregate economy would look exactly like the manufacturing sector. But the smaller is manufacturing, the bigger the effect this term has. 

3. $\% \Delta Inputs_M -  \% \Delta Inputs_S$: I know I dropped in some new notation here. This is the difference in the growth rate of total input use in manfucturing and services. Technically, there are separate terms in here referring to capital and labor, but this does the job. This last difference is what determines whether the whole second term is positive or negative. If input use in manufacturing is growing faster than in services, then this term would be positive, and it would make measured aggregate TFP growth higher. On the other hand, if services have higher input growth, then measured aggregate TFP growth would be lower.

### Back to English
What the math confirms (I hope), is that aggregate TFP growth depends not only on aggregate technology, but also an adjustment for whether input use is growing faster in a high-profit sector (i.e. manufacturing) or a low-profit sector (i.e. services). To the extent that services have faster input growth, measured TFP growth will be *lower* than actual technology growth. This is because input use in services is a little over-weighted compared to manufacturing, but the share of GDP in services is a little under-weighted. When inputs flow into services, it is like we are counting the input use more than we count the GDP growth that comes with it, and since TFP growth is just GDP growth minus input growth, it looks like TFP is growing more slowly.

Note that this is an additional effect of moving into services, over and above the plausible story that services have relatively low "true" technological growth. It's also complete speculation, because I'm just spitballing this idea that the profits in manufacturing are larger than services. It might make more sense to just think about high-profit and low-profit sectors, and ask if inputs are shifting from the former into the latter. Either way, once you've got sectors tha differ in their profit shares, your measure of aggregate TFP growth has this possible problem.

I think the lesson here is that you really cannot use only aggregate data if you want a measure of aggregate technology growth. You will always run into the garbage can issue. If you want a measure of aggregate technology growth, you should calculate technological growth for each individual unit (firm or sector) separately, and *then* add those up, if you want any chance. Since I know you were hoping for another breakfast food analogy, imagine using a tweezers to pick up each individual crumb of waffle to ensure you do not touch any syrup. 
