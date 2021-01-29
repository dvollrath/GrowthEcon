---
layout: post
title: TFP Agnosticism
published: true
category: feed
tags: slowdown
---

In some recent Twittering, [Eli Dourado](https://twitter.com/elidourado) pointed to the "Gordon/Vollrath" view that stagnation is normal, healthy, and a sign of success. I guess it is kind of cool that I have a notable view, and being associated in some way with Bob Gordon is a nice honor for me (not sure how he feels about it). I made a few attempts to clarify what I thought about that view, but in the end I didn't think I could pin it down on Twitter, so here we are. 

The overall question of how we should view measures of TFP and innovation ranges beyond just this discussion with Eli. I'm going to pool Eli and others into a group I'll call "TFP Believers". As for myself, I'm going to call myself a "TFP Agnostic". 

The Believers and I agree on the following. Innovation is crucial to improving well-being. We need innovation to cure diseases, clean the environment, and do all sorts of other things that would make life better. There is a [growing sense](https://www.economist.com/leaders/2021/01/16/why-a-dawn-of-technological-optimism-is-breaking) that a new burst of innovation is occurring or coming, and that to be encouraged by and excited about. Innovations are what make life better.

Here's where I think we disagree. Believers think TFP growth is a meaingful measure of that innovation. Hence, if there is a coming burst of innovation it will show up as higher measured TFP growth. Moreover, we should be actively trying to raise measured TFP growth through policies or whatever is at hand.

I, on the other hand, do not think that TFP growth measures innovation, per se. Hence, I do not worry much about the rate of TFP growth. I would use policy or whatever is at hand to encourage innovation, whether that has a meaningful effect on TFP growth or not.

We have the same ultimate goal, which is for innovation to lead to greater well-being. I think all we really disagree about is how to measure that. 

I don't deny that innovation plays a part in TFP. My problem is that so many *other* things go into TFP that it ends up a very noisy, imperfect measure of innovation. Using TFP to measure innovation is like using a pedometer to measure your VO2 max. Is there a connection? Yes, to the extent that having a high VO2 max means you *could* take more steps. Is that connection confounded by a host of other factors? Yes. Could you conceive of a very particular set of assumptions and conditions under which the number of steps you take is perfectly correlated with your VO2 max? Sure, in a bio-mechanics lab somewhere. Does we actually live in a bio-mechanics lab? No.

TFP isn't built to measure innovation, just like a pedometer isn't built to measure VO2 max. Hence my agnosticism.

### Turtles all the way down
TFP is the sum of technical efficiency and allocative efficiency. Technical efficiency is the weighted average of industry-specific productivity growth rates. Allocative efficiency is an adjustment for whether factors of production like labor or capital are misallocated or not. 

Where does innovation fit in here? It presumably is what drives the industry-specific productivity growth rates. But since industries are made up of sub-industries, that means industry-specific productivity growth rates are a weighted average of sub-industry-specific productivity growth rates plus an adjustment for allocative efficiency within that industry. So innovation could be what drives *sub*-industry-specific productivity growth rates. 

But sub-industry-specific productivity growth rates are made up of sub-sub-industry-specific productivity growth rates plus an allocative efficiency piece. So innovation could really be what drives *sub-sub*-industry-specific productivity growth rates. And so on. It's turtles all the way down. 

What is the right level to stop at to measure real innovation? At what point in the disaggregation do we reach the point where innovation *actually* occurs. We don't know. But if you want TFP to measure innovation you have to know. You'll get different answers for aggregate technical efficiency depending on how disaggregated your data are. Does it make sense that our measure of innovation should depend on which level NAICS code the BLS decided to use? 

The only way the disaggregation *doesn't* matter is if all those allocative efficiency terms at every level are zero. They are zero in an economy where all factors of production (capital, labor, etc.) are allocated such that marginal products are perfectly equal across units. Which is the economic equivalent of the bio-mechanics lab. We don't live in that lab.

### Weights and measures
The disaggregation issue is my first problem. The second is that the weights in those various weighted averages *change* due to innovation, and thus the growth rate of TFP could change even if the amount of innovation does not. 

I think this is easiest to see with an example. Let's have two industries, A and B. Then aggregate TFP growth is

$$
g_{TFP} = w_A g_{A,TFP} + w_B g_{B,TFP} + AE.
$$

The weights are $w_A$ and $w_B$, and the growth rate of TFP in the two industries are $g_{A,TFP}$ and $g_{B,TFP}$. That "AE" is the allocative efficiency stuff I'll get to later.

We're going to ignore all the disaggregation problems I just cited and assume that $g_{A,TFP}$ and $g_{B,TFP}$ are in fact picking up the effect of innovation on the productivity of industries A and B. A is going to be our "innovative" industry, with $g_{A,TFP}$ of 3%, and B is going to be our "stagnant" industry with $g_{B,TFP}$ of 0%.

The important part here is that these two industry-specific productivity growth rates are going to stay constant over time. Since they measure innovation - by assumption - that means the amount of innovation is staying constant over time as well.

What about the weights? Those are roughly the share of GDP accounted for by each industry. I say roughly because in practice those weights depend on how the industries interact through input/output relationships, but share of GDP is a good approximation. 

We're going to start with the innovative industry as 50% of GDP, and the normal industry as 50%, so 

$$
g_{TFP} = 0.5 (0.03) + 0.5 (0) = 0.015.
$$

1.5% TFP growth. That shouldn't be surprising as industry A accounts for half of GDP. 

Here comes the TFP agnosticism. *What happens to the weights tomorrow*?

The answer comes down to what you think about preferences for A and B. If A and B are complements, then people take advantage of the lower price of A (or the higher quality for the same price) to buy a few more *units* of A but overall spend *less* on A. They take those savings and buy a little more of B and overall spend *more* on B. The weights shift in B's favor. Let's say that the weight on A is now 40% and on B 60%. TFP growth is

$$
g_{TFP} = 0.4 (0.03) + 0.6 (0) = 0.012.
$$

Only 1.2% TFP growth. The TFP growth rate has *fallen* even though we just established above that innovation is constant, given that the TFP growth rates of each individual industry remain the same. TFP growth can change even though innovation does not.

If we continue over time like this the weight on A is going to get smaller and smaller and the weight on B is going to get bigger and bigger and eventually the share of A is going to approach zero. At that point aggregate TFP growth will be *zero* as well. But innovation will have continued to deliver $g_{A,TFP}$ of 3% every period. 

This kind of dynamic is precisely what was behind agriculture's decline as a share of economic activity. Agriculture in the 20th century, and in particular since World War II, has been one of the *most* innovative industries in the economy, and has experienced massive increases in TFP. The result? Agriculture accounts for maybe 2% of GDP today, down from 15% around 1950, and down from around 30-40% (or possibly more) around 1900. The contribution of all that innovation to overall TFP growth has dwindled to almost zero. But that doesn't mean the innovation didn't happen. And it doesn't mean innovation in agriculture stopped. All that happened is that the weights changed.

Assuming that A and B are substitutes, so that the share of A goes *up* as it gets more productive, doesn't eliminate the problem. Then the growth rate of aggregate TFP starts at 1.5% and *rises* over time even though, again, the underlying rates of innovation are constant. 

The only way to avoid this problem is to assume that the GDP shares of the two industries are constant, meaning the elasticity of substitution between A and B for consumers is precisely one. And that is another case of something that works only in the bio-mechanics lab.

### Nothing is perfect
So the first problem was disaggregation. The second problem was that the weights change over time in response to innovation.

And that brings us to the last problem, which is the "AE" term I left floating around up there. This, recall, refers to allocative efficiency, or the effect of any distortions in prices (of products or factors) on economic activity. Those distortions can be things like monopoly markups, or taxes, or frictions in labor markets, or anything that means marginal products for factors of production are not equalized across different uses. 

If these distortions are changing over time, this can have a significant impact on aggregate TFP growth. What is it telling you about innovation? Nothing we can make sense of. Innovation could occur that lowers market power, as when a new competitor enters an industry, and this could increase aggregate TFP. Or innovation could increase market power, as when someone creates a new product entirely and is the monopoly provider of that.

Even leaving the actual distortions as they are, innovation can alter the allocation of factors across different industries or firms. This is the same process as changing the weights I described above. If industry A is more innovative, and spending on it declines, A will shed labor and capital to industry B. Does that increase TFP or lower it? It depends. 

If B has higher markups, then paradoxically this would *increase* TFP growth. But if B has lower markups, it will *lower* TFP growth. The logic here is kind of funky, but I tried to explain it in some posts a while back, see [here](https://growthecon.com/blog/Paradox/) and [here](https://growthecon.com/blog/Paradox-2/). Either way, the point is that innovation screws with allocative efficiency in ways that are not always positive for TFP growth. 

### Here comes the sun
Given those three issues - disaggregation, weights, and allocative efficiency - I don't see how aggregate TFP growth is a good indicator of innovation. An increase in innovation can increase TFP growth, lower TFP growth, or leave TFP growth about the same. So you can't reason backwards from TFP growth to infer anything about the speed of innovation. 

Hence I am a TFP agnostic. I'm not *against* growth in aggregate TFP. That would be great, because it means we're getting more out of less. But you cannot use aggregate TFP growth to judge whether we are innovative or not, and making it your metric for innovation is doomed to disappoint. 

Let's take solar energy as an example. I am all on board the solar train. What has occurred in the last ten years is nothing short of amazing. All of the hype about solar, like [Noah's post](https://noahpinion.substack.com/p/why-im-so-excited-about-solar-and) is well deserved. 

I'm excited about solar *even if it doesn't increase TFP growth*. Why? Because it is freaking  carbon-free energy! Even if we get *nothing* out of it in terms of increased TFP growth, it is completely and utterly worth installing. The *point* of solar energy is not to make the economy more efficient, it is to reduce our reliance on fossil fuels. By our own actions - subsidies that distort the cost of solar - we've shown that we are willing to sacrifice efficiency and TFP growth in order to get our hands on that solar energy.

Twenty years from now, in 2041, let's say I want to see how far we've gone towards having a carbon-free solar economy. I'd look at the percent of KWh produced by solar, not the average annual growth rate of TFP between 2021-2041. And if I *did* look at the growth rate of TFP, how would I know? Does 1.2% TFP growth mean we have a carbon-free economy, and 1.1% means we don't? 

TFP is an incredibly useful statistic to know, and higher TFP growth is way better than low TFP growth. But it is not a meaingful measure of the speed of *innovation*. 

And lest we forget, Ted Cruz is a seditious grifter who should resign.


