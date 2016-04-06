---
layout: post
title: Productivity versus Technology in American Growth
published: true
category: feed
---

I just [reviewed](https://growthecon.com/blog/Gordon-Review/) Bob Gordon's book on the rise and fall of American growth. A quick recap of Gordon's thesis is that we experienced an anomalous burst of technological progress during the 1930's and 1940's, bleeding a little into the 1950's and 60's. Prior to that period, and since that period, technological progress was relatively slow, and Gordon expects that slow technological progress to be the norm for the foreseeable future. 

This thesis is based in large part on evidence of differences in TFP growth decade-by-decade. Gordon's Figure 16-5 is probably the key graph in his book, as it shows TFP growth of 3.5% per year during the 1940's, well above the norm for other decades. Even without the 1940's, TFP growth around 1.5% per year in the 30's, 50's, and 60's. In contrast, TFP growth was below 1% per year in the 1900's, 10's, and 20's, as well as the 1980's, 90's, and 2000's. 

But TFP growth is measured as a residual, and is not necessarily equal to a measure of technology. I've made this point [before](https://growthecon.com/blog/labors-share-profits-and-the-productivity-slowdown/) on this blog, but it is worth revisiting in light of Gordon's book. In short, do Gordon's TFP growth rates really indicate significant differences in *technological* growth by decade?

### Residuals and Technology

To start, we have to establish how TFP and technology are related. The residual measure of TFP that Gordon uses is

$$
R = \frac{Y}{K^{1-s_L}L^{s_L}}
$$ 

which is a completely standard way of doing this. The $s_L$ is labor's share of revenues (GDP). As is typical, Gordon assumes there are constant returns to scale so that capital's share is mechanically $1-s_L$.

Output is actually defined by

$$
Y = A K^{\alpha} L^{\beta},
$$

where I've left open the possibility that the elasticities on capital and labor add up to something other than one. If $\alpha+\beta>1$, then you have increasing returns to scale. If $\alpha+\beta=1$, you have constant returns. The term $A$ is the actual measure of technology. The residual measure Gordon uses is thus capturing the following

$$
R = A \frac{K^{\alpha - s_K}}{L^{\beta - s_L}}.
$$

It is pretty clear that $R$ need not necessarily be equal to $A$. In terms of growth rates, which is what Gordon is focused on, we can write this as

$$
\frac{\dot{R}}{R} = \frac{\dot{A}}{A} + (\alpha - 1 + s_L)\frac{\dot{K}}{K} + (\beta-s_L) \frac{\dot{L}}{L},
$$

and the growth rate of the residual is not necessarily equal to the growth rate of technology. It all depends on whether the revenue shares, $1-s_L$ and $s_L$, are in fact equal to the elasticities, $\alpha$ and $\beta$.

To get some structure to understand why they might differ, we can make the minimal assumption that firms are cost-minimizers. In that case it will be true that

$$
\alpha + \beta = \mu(1-s_{\pi}).
$$

This equation says that the returns to scale, $\alpha + \beta$, are equal to the markup of prices over marginal cost, $\mu \geq 1$, times the share of revenues that are paid to factors of production. That share is one minus the share of revenues paid out as profits, $s_{\pi}$. Note that $s_{\pi} > 0$ means that the shares of output paid to capital and labor need not add up to one - but in Gordon's calculation they have to add up to one. Gordon's assumption is very typical, but it is one way of the things that will generate a possible divergence between the measure of productivity and the measure of technology. If you're interested at all in how to derive all this, the ideas come from {% cite hall1988 hall1989 basufernald %}.

Which brings us back to the residual measure. If you plug in the scale, markup, profit relationship into the growth rate of the residual, and rearrange, you can come up with the following

$$
\frac{\dot{R}}{R} = \frac{\dot{A}}{A} + (\mu(1-s_{\pi}) -1)\frac{\dot{K}}{K} + s_L(\mu-1)\left[\frac{\dot{L}}{L} - \frac{\dot{K}}{K}\right].
$$

This isn't the only way to write this, as you can manipulate the equation into different forms. But I think this is a useful way to look at things. This says that there is a difference between the growth rate of TFP, $\dot{R}/R$, and the growth rate of technology, $\dot{A}/A$. 

The first part of this difference is the term involving $s_{\pi}$, and this is picking up any effects of increasing returns to scale. If there are IRS, then this term will be non-zero. The increase in scale associated with a larger capital stock generates higher measured productivity growth, even if technology isn't growing any faster than normal. 

The second part of this difference is the last term involving $s_L(\mu-1)$. This captures the fact that assuming capital's share in output is $1-s_L$ may be wrong. If it is wrong, which would show up as $\mu>1$ in some way, then the growth rate of TFP isn't going to be equal to the growth rate of technology. 

### Do these adjustments matter?

What Gordon is relying on is that the residual TFP measure is in fact a good gauge of technological growth. In other words, that the two adjustments I outlined above are close to zero. That will be true if we have constant returns to scale, so $\alpha+\beta = 1$, *and* firms have no market power so that $\mu=1$. These assumptions are commonly made, so it isn't like Gordon is doing anything sneaky. Even if he is wrong about those precise values, if firms had a *little* market power, so that $\mu=1.02$, or there were mild IRS, so $\alpha+\beta=1.01$, then the adjustments would be insignificant. Gordon's measures of TFP growth are good measures of technological growth if we think that production is constant returns and markups are sufficiently close to one.

What if they are not, though? The period of time that has the biggest spike in TFP growth is the 1940's, which seems to have a number of odd features that make me wary of the assumption about markups and returns being close to one. First, there were guaranteed markups given to firms producing defense goods (which Gordon mentions himself on page 553). Second, there were clearly some massive economies of scale in production during this decade. The U.S. didn't build B-24 bombers at a bunch of mom-and-pop bomber assembly shops. They were built in a single location, Willow Run, at a peak rate of 432 *per month* in 1944. It seems hard to believe that there weren't economies of scale at work in the economy of the 1940's. 

But does that have a meaningful quantitative impact on the measurement of technology growth? I'm eyeballing numbers here from Gordon's graphs, so this is fuzzy, but I think it can give an idea of what was going on. First, we need a measure of capital growth, $\dot{K}/K$, and labor growth, $\dot{L}/L$. For capital growth, I used Gordon's table A-2, which shows his adjusted capital stock data for several select years, including 1941 and 1950. Using those, it looks like capital grew at 1.7% per year in the 1940's. That feels low, given the war, but isn't really any different than the growth rate reported by the BEA. I have no real reasons to question the rate. For labor, I did go back to an NBER publication by [Kendrick](http://papers.nber.org/books/kend61-1) that Gordon uses, and tried to dig up the growth in hours he uses. Combining that with the adjustment for labor quality growth that Gordon pulled from [Goldin and Katz](http://s3.amazonaws.com/zanran_storage/www.hup.harvard.edu/ContentPages/50365105.pdf), Table 1.3, I get a total growth rate of labor of 1.8% per year for the 1940's. 

With those, I need a markup, $\mu$. For the moment, let's try to see how big of an effect I can have, and choose $\mu=1.5$. That's big, with 50% markups over marginal cost. But if there really were massive economies of scale, then this kind of markup may not be that implausible. The last things to plug in are the share of revenues for labor, $s_L$, and profits, $s_{\pi}$. For $s_L$, I use Gordon's number, 0.7. For profits? I don't know. It is quite plausible that firms in the 40's charged markups, but that those were to cover fixed costs. So perhaps true economic profits are zero? Again, I'm trying to see how big of an effect these adjustments might have, so let's set $s_{\pi} =0$. 

Finally, from Gordon's figure 16-5 we know that measured TFP growth in the 1940's was about 3.3% per year. So put this all together and we have

$$
0.033 = \frac{\dot{A}}{A} + (1.5(1-0)-1)0.017 + 0.7(1.5-1)(0.018-0.017) = \frac{\dot{A}}{A} + 0.00885.
$$

In other words, the residual growth rate *overstates* technological growth by about 0.85 percentage points per year. Technological growth was 0.033 - 0.00885 = 0.02415, or 2.42% per year, not 3.3% per year. That is a pretty sizable adjustment. But it is still very high compared to all other decades. 

In addition, we'd have to make this adjustment to all those other decades as well. Would that lower their implied technology growth as well? That depends on (a) the growth rate of inputs in those decades, and (b) what you assume about the markup in those years. I think you could make the case that the adjustment would be much smaller in other decades. First, the growth rate of inputs is slower. The labor measure Gordon uses combines hours worked with an adjustment for growth in quality of labor. Labor quality (i.e. schooling) is growing more slowly now, and labor hours are not rising as fast due to both demographics and shorter work weeks. So it could easily be that $\dot{K}/K > \dot{L}/L$, and the growth rate of TFP *understates* technological growth. 

Second, maybe IRS was something unique to the 40's (or other mid-century decades), which would eliminate the first adjustment due to scale. The transition towards services would certainly be one reason to believe that we do not have as much possibility of IRS in aggregate production. The 40's may have been unique in having a large fraction of output produced by IRS industries.

I played around with several other decades, with the idea of seeing if any adjustments are even *possible* that could eliminate the gap in technological growth from the 1940's. But there is no plausible way I see to make adjustments to their productivity growth that deliver "real" technological growth close to 2.42% per year. The adjustments are not big enough to change Gordon's main thesis. The 1940's appear to be an outlier(s) in terms of technology growth. 

That said, some of the observed productivity growth in the 1940's is probably not technology growth, per se, but rather reaping the benefits of increasing returns to scale. One way of interpreting Gordon's thesis is that the WWII era was special because it incorporated IRS production into the economy, and that really was a one-time thing. But now that we've added those industries - and because there is ultimately limited demand for their output - we no longer reap the benefits of those IRS. If you pushed this far enough, then I think you would be worried less about Gordon's "headwinds". It isn't that we are somehow failing to match the technological growth of an earlier period, it's that we simply outgrew the stage at which IRS boosted measured productivity growth.

### References
{% bibliography --cited %}
