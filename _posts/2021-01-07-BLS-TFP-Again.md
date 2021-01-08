---
layout: post
title: The 1965 shift in growth
published: true
category: feed
tags: slowdown
---

Well, insurrection in the nation's literal Capitol was not the context I expected for my next blog entry. But with lots of nervous energy and few useful outlets for it (I, alas, am not authorized to arrest Ted Cruz) I figured I'd work on this post.

This is a follow up to my [last post](https://growthecon.com/blog/BLS-TFP/) from early December, where I was digging deeper into some data on total factor productivity (TFP) growth rates. The reason for *that* post was that I participated in a discourse on [Pairagraph](https://www.pairagraph.com/dialogue/ee04c261817f45f39e1d0bb5f63e0b90) with [Eli Dourado](https://twitter.com/elidourado) of the Center for Growth and Opportunity. The prompt was "Economic growth is stagnating, but there's more to the story." We were talking about interpretations of slow growth. 

The upshot of the December post was that the growth rate of TFP started to drag far earlier than the discourse with Eli - or much of the current discourse around slow growth - assumed. Rather than slow TFP growth starting after the Great Recession, or after 2000, it appears to have started in the early 1970s. 

I want to revise that earlier post a little to push back the slowdown even further to the mid-1960s, and talk more about *why* the slowdown started so early, and lingered so long. The short answer is: Baby Boomers. 

Standard disclaimer about this being utter speculation applies. 

### Decomposing growth
I'm using the same data from the December post, and that Eli and I talked briefly about in our posts on Pairagraph. This is the BLS series on multi-factor productivity, which is just a different word for TFP. You can see the December post for links to a version of that data hosted by John Fernald at the San Fran Fed that includes some adjustments for capacity utilization. That adjustment isn't terribly important to what I'm doing here. 

When the BLS (or John with his adjusted data) calculate the growth rate of TFP for a year, they use a formula that looks like this

$$
gTFP = gGDP - a gK - (1-a) gLQ - (1-a) gHours.
$$

That is, the growth rate of TFP ($gTFP$) is equal to the growth rate of GDP ($gGDP$) minus the growth that can be accounted for by capital and labor (all the rest of those terms). The value of $a$ serves as a weight on how important growth in capital is ($gK$) and how important the two pieces of labor are ($gLQ$ and $gHours$). That value can change year to year, but is generally around 0.33. I have thoughts - long, tedious, boring thoughts - about why that number is probably too high, but this is not the time or place to subject you to them.

Those two parts of labor are $gHours$, which measures the growth in the raw hours worked by people in the economy, and $gLQ$, which measures the "labor quality" of those people. This labor quality is inferred from changes in relative wages, and is meant to reflect any change in how valuable firms find workers. This would be capturing any increase due to education, or skill acquisition outside of formal education, or experience effects, or ... whatever else might make labor useful to a firm *beyond* the raw hours that labor works. 

This little table shows the values of each piece of that equation for three different time periods: 1948-65, 1966-2000, and 2001-2018. All the growth rates are in percent form, to avoid lots of things to four and five decimal places. 

<table style="width:100%">
	<colgroup>
       <col span="1" style="width: 15%;">
       <col span="1" style="width: 17%;">
       <col span="1" style="width: 17%;">
       <col span="1" style="width: 17%;">
       <col span="1" style="width: 17%;">
       <col span="1" style="width: 17%;">
    </colgroup>
  <tr>
    <th>Years</th>
    <th>gGDP</th> 
    <th>agK </th>
    <th>(1-a)gLQ</th>
    <th>(1-a)gHours</th>
    <th>gTFP</th>
  </tr>
  <tr>
    <td>48-65</td>
    <td>3.46</td> 
    <td>3.02</td>
    <td>0.41</td>
    <td>0.38</td>
    <td>2.01</td>
  </tr>
  <tr>
    <td>66-00</td>
    <td>3.29</td> 
    <td>3.98</td>
    <td>0.37</td>
    <td>1.55</td>
    <td>0.75</td>
  </tr>
    <tr>
    <td>01-18</td>
    <td>2.05</td> 
    <td>2.54</td>
    <td>0.42</td>
    <td>0.44</td>
    <td>0.61</td>
  </tr>
</table>

Take a look at what happens, in particular, at the transition from 1948-65 to 1966-00. GDP growth falls *a little*, from 3.46% per year to 3.29% per year. But capital growth *increases* by almost one whole percentage point, from 3.02 to 3.98% per year. Labor quality growth doesn't change much, but the growth rate of hours sees a very large *increase*, from 0.38% per year to 1.55% per year. 

The net effect of (a) the growth rate of GDP staying about the same and (b) the growth rate of inputs rising is to lower the implied growth rate of TFP. It drops from 2.01% per year to only 0.75%. This is a significant slowdown in productivity growth, and it happens in the mid-1960s, not in the late 1970s, the early 2000s, or after the Great Recession. 

Note from the third line that the growth rate of TFP does drop in 01-18 to 0.61%, but that drop from 0.75% is much smaller than the drop that occurs starting in 1966. We'll come back to the other pieces of this later. 

Going back to the change in 1965, the point I want to make is that productivity growth dropped - in accounting terms - because input growth went up but we did not see any increase in output. The economy absorbed more and more workeres and more and more capital, but it didn't translate into more and more output growth. 

### Boomers!
The choice of 1965 wasn't an accident. That year is when the first Boomers turned 20. I chose it because it represents a point at which the Baby Boom generation really started to hit the labor force. Yes, some of them would have been working at younger than age 20 (and hence in the early 1960s) but by the late 1960s the labor force participation of the Boomers would really be kicking in. 

And once they entered the work force, what happened? Very clearly hours started to grow faster (1.55% versus 0.38%) but output did not. Capital accumulated faster (3.98% versus 3.02%) but output did not. And if you raise the growth rate of inputs like labor and capital, but nothing happens to the growth rate of output, then by necessity the growth rate of TFP must be lower. 

One possibility is that it just so happens that around 1965 when the Boomers hit the labor market, the pace of innovation or technological change or *something* slowed down. And that it slowed down just enough to offset the increase in input growth, and left us with the same growth rate of output. You cannot rule that out. You could probably even make an okay case for this by talking about how the build-out of the electric grid or phone service or the interstate highway system were winding down starting in 1965? 

But that also seems kind of coincidental. A different story is that the economy kept expanding at about 3.3% per year after 1965 for some fundamental reasons like continued technological change or even continued expansion in natural resource use, and that we then tried to stuff a whole outsized generation of workers into that same economy (along with extra buildings so they'd have a place to sit). Like "Okay, your parents own the company so we have to find *something* for you to do, so why don't you sit here and move these papers from that file to that one." 

That's a cruel way to phrase things, but I think there is something to idea that the Baby Boom generation came along and was just too big to absorb all at once. We normally think of production expanding as you add more labor, yes. But what if that really only makes sense if you add small amounts of labor at any given time? 

Having an additional worker show up at your construction site probably helps move things along. Having three show up might be useful. Having twenty show up becomes a management problem. In more mathemetical terms, I'm thinking that the elasticity of output with respect to labor to a first order approximation is positive and something like, say, 0.6 or 0.7. But that "to a first order approximation" part is important. That means the elasticity holds for small percent changes in labor. There could well be second-order effects (like when the 20 people show up at the site) that cause the elasticity to plummet when the percent change in labor gets large.

To belabor this further, I'm not just talking about a diminishing marginal product for labor. Having an elasticity of 0.6 or 0.7 (i.e. less than one) already incorporates a diminishing marginal product. I'm talking about a second-order effect that says the elasticity itself falls, and so the marginal product of labor diminishes even faster as you add more labor. It's like talking about acceleration versus velocity, sort of. 

The drop in TFP growth starting in 1966 (ish) may reflect the fact that it is just hard to accommodate that big of a generation into the labor force over a short time. Maybe it didn't reflect a real change in our ability to innovate at all. 

### The olds
One reason I might be wrong about all that is what happened in 2001-18. We're looking now at the tail end of the Boomers work life. They're kind of at their career peaks around 2000, and then start the process of extracting themselves from the workforce. You can see the drop in both labor hours growth (from 1.55 to 0.44%) and the drop in capital growth (from 3.98 to 2.54%) that occur. But output growth does not stay around 3.3%. Instead it drops to 2.05%. With the end result that productivity growth stays low, and in fact drops a little more (from 0.75 to 0.61%). 

Why didn't the effect work in reverse? Why didn't output growth stay at around 3.3% and TFP growth go back up to something close to 2% per year as the Boomers exited? One very plausible reason is that I'm just wrong about this idea regarding the first and second order effects in 1965. What the transition to 2001-18 might indicate is that there really was some slowdown in innovation or technological change or *something* during the 1966-2000 period that stuck. Maybe it was the drop in manufacturing as a share of economic activity, or changes in some policies, or globalization, or whatever. 

That could well be the case. It still leaves me wondering why we should focus hard on the period 2001-18 for the source of the slowdown in productivity growth, though. It may well be something that occurred earlier.

Or, perhaps there is some fundamental asymmetry between growing and shrinking. Maybe the second-order effects that pushed down the elasticity with respect to labor in 1965 don't work in reverse. What I mean is this. Starting around 1965, the marginal product of a new Boomer worker got pushed to zero because it was just too hard to absorb them all at once (the 20 new people on the construction site). But by 2000, we've had a few decades to figure out how to use those Boomers, and they each have a role and reason to be there that has positive marginal value. When they leave/retire, that lowers output. So rather than having the exit of the Boomers be reflected in higher TFP growth, it is reflected in lower GDP growth. 

In the construction analogy, after a few months with those 20 extra workers around, you've worked out a nice system, and can now slap up a house without them all sitting around. If I then come along and tell you to get rid of 10 of those extra workers, or all 20 of them, that is now going to have a big impact on your house-building. You've got to re-adjust *again* to dealing with a smaller workforce. And you may no longer remember how you did it with fewer people. 

This might all sound like I'm working really hard to blame Boomers for current economic problems. I'm not out to get them. I'm not even convinced that this represents an economic problem ([buy my book!](https://amzn.to/35mzPfg)). But the sheer scale of their impact is easy to forget. You can see it in the numbers of the above table just in the hours growth. Going from 0.38% growth in hours per year to 1.55% growth is a factor of *four*. Four times the rate of new employees and hours entering the economy every year. That's massive. 

My argument depends on some kind of second-order effect, or that there isn't a strict mechanical relationship of the number of workers to output. One way to think about this is with one of my all-time favorite papers, [James Schmitz's 2005 work](https://ideas.repec.org/a/ucp/jpolec/v113y2005i3p582-625.html) on the US and Canadian iron ore industries. The point of that paper was that competition (from Brazil) lead to fundamental changes in labor productivity despite no changes in underlying technology. It's an example of an industry that originally absorbed a lot of labor without changing output much. In this case once competition arrived they were able to shed a lot of that labor but keep output the same. No strict mechanical relatonships of labor to output.

A second way to think about this is with a paper on the demographics of firms by [Hopenhayn, Neira, and Singhania](https://ideas.repec.org/p/nbr/nberwo/25382.html), which I talked about in a [post](https://growthecon.com/blog/Aging-Growth/) a little over a year ago. Flooding the economy with new labor could lead to a flood of new firms, and new firms tend to be less productive than old firms, even if they *might* be liable to grow faster. Again, it's a story about slowly adapting to a surge in labor.

Again, this isn't some screed about Boomers ruining everything. It is an observation that our understanding of slow growth may need to back up a few decades, and may involve taking seriously second-order effects of labor force growth. 

And it got me from doom-scrollling for a while. Which reminds me:

Ted Cruz is a seditious grifter who should be removed from the Senate. 

Happy New Year!

