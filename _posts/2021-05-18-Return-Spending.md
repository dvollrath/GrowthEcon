---
layout: post
title: The return to public capital spending
published: true
category: feed
tags: policy, theory
---

In the time-honored tradition of the Growth Economics Blog, I am coming into a discussion about four weeks late. In this case it has to do with the value of spending on "infrastructure" or public capital, which came up because of the proposed Biden infrastructure bill. 

At that time I had a brief exchange with someone asking, roughly, "How many dollars of GDP do you get for one dollar of infrastructure?". We went back and forth via e-mail on this, looking for a good back-of-the-envelope kind of calculation. I don't think I gave that person a really coherent answer, although I'm pretty sure all the pieces were there in some form. This post is an attempt to make a more coherent case for how to think about this. 

I generally support the proposed infrastructure bill. A secondary purpose of this post is to establish the logic behind that support, and perhaps more important to establish why I might be wrong. If you want to talk me out of that support, you can tell me which specific assumption(s) I'm making that are wrong and how that changes my calculation.

The first thing to do is to be more clear about the question. What I want to ask is "What is the net present value (NPV) of the additional GDP - in dollars - you get over time for one dollar of public capital spending today?" 

Why the present discounted value of GDP over time, as opposed to the extra GDP I would get today (or say, in 2022)? Because we're talking about capital goods, and it doesn't make sense to evaluate the return on a capital good only in the year it was built. Whether a dollar of public capital is "worth it" or not depends on the flow of GDP you get from it over its life. You don't ask whether buying a car is "worth it" by evaluating how useful it is to get to work *today*, you evaluate how useful it is to get to work over the next few years. 

The other thing to point out here is that I'm not interested in the fiscal position of the federal goverment, I'm interested in whether the public capital spending is worth it for the economy as a whole. If we were worried about the fiscal position of the US government the question would be something like "What is NPV of the taxes that can be collected given a one dollar increase in public capital?". 

The question of interest to me is whether it is worth allocating real resources - labor, existing capital - to produce public capital goods versus allocating them to produce .... something else like consumption goods or private capital goods. That idea of the opportunity cost of public capital is going to be important when we get to figuring out how to discount the flow of GDP back to today.

As an aside, the general idea here is very similar to what [Jones and Summers](https://ideas.repec.org/h/nbr/nberch/14422.html) just did for the returns to R\&D spending. Matt Clancy has a [nice explainer](https://mattsclancy.substack.com) on that. 

### Calculating the return
How do I find the NPV of one dollar of public capital?

If I spend one dollar on public capital, I get $1/p_X$ real units of public capital, where $p_X$ is the price of a unit. 

Those units of public capital (presumably) get used in production and so the next thing I want to know is how many units of real GDP I get from each unit of public capital. For that I need the marginal product of public capital, $MPX$. So in real terms I'm getting $MPX \times 1/p_X$ units of extra GDP from spending one dollar on public capital. To put that in dollar terms, I need to multiply this by the price of a unit of GDP, $p_Y$. So the dollars of GDP I get from one dollar of public capital are $MPX \times p_Y/p_X$. 

This calculation only tells me how many dollars of GDP I get *this year*. But the public capital doesn't disappear after I use it, and I can use it next year (and the year after that and so on). It probably does depreciate, however, so assume that every year a fraction $\delta$ of the public capital becomes useless or fails or whatever. What I am going to assume (and will justify below) is that the actual $MPX \times p_Y/p_X$ doesn't change over time. The dollars of GDP I get from public capital decline over time due just to depreciation of the public capital I purchased.

I need to discount those future flows of extra GDP back to the present, so I need some discount rate $r$. Without going into the math behind calculating a net present value (NPV), here's what I'm going to get:

$$
NPV = \frac{MPX \times p_Y/p_X}{r+\delta}
$$

The $\delta$ in the denominator is accounting for the fact that the public capital declines over time, and notice that the higher the depreciation rate the lower the NPV. 

The discount rate $r$ is going to end up more interesting, and I'll go through this in more detail below. But keep in mind that it is the return we could get on our dollar of spending from an alternative investment.

### Marginal product of public capital
Start with the $MPX$, the real addition to GDP from one additional unit of public capital. As a general rule, I can find the $MPX$ from $MPX = \beta Y / X$, where $\beta$ is the elasticity of GDP with respect to public capital (% change in GDP for a % change in X) times the GDP/public capital ratio (Y/X). 

How would I figure out these values? My colleague German Cubas has a [very nice paper](https://academic.oup.com/ej/advance-article-abstract/doi/10.1093/ej/ueaa079/5860275?redirectedFrom=fulltext) where he calculates stocks of public capital across countries, and does some work to back out a value for $\beta$. What he finds is that the ratio $Y/X$ for rich countries like the US is about 2 (or the public capital to output ratio is only about 1/2). For comparison, the $Y/X$ ratio for private capital is probably like 0.3, so this means there is a lot more private capital compared to GDP than public capital compared to GDP. Which makes sense, as private capital includes everyone's homes and all commercial buildings. 

For the value of $\beta$, he gets a value of $\beta \approx 0.09$. A 1% increase in public capital leads to a 0.09% increase in GDP. The elasticity for private capital is around 0.30, for what it is worth. 

This means the $MPX \approx 0.09 \times 2 \approx 0.18$. That holds as of now. Implicitly in the equation I gave you above, I'm assuming that this $MPX$ stays the same over time. But wouldn't the addition of more X push down the Y/X ratio? And wouldn't the value of $\beta$ change, possibly, in response? I'm going to appeal to some theory and some back-of-the-envelope calculations to suggest that the $MPX$ stays about the same over time, so we can use 0.18 in the equation above.

A Y/X ratio of 2 implies that public capital is around 11 trillion nominal dollars, given a GDP of about 22 trillion nominal dollars. The Biden plan is roughly 2.3 trillion nominal dollars, but that is spread out over 8-10 years, and not all of it is actually for public capital. So the potential absolute increase in the public capital stock in a given year isn't huge, meaning the Y/X ratio isn't going to change much. 

From a theory side, a standard growth model with a role for public capital would tell you that the ratio Y/X is stable along a balanced growth path, and since I think the U.S. is roughly on a balanced growth path, then Y/X isn't going to move a whole lot. We're not China engaging on a capital-building spree to catch up to the West. These are more marginal adjustments. 

Finally, I'm assuming that $\beta$ stays constant over time because .... I really have no alternative. I don't think we have good estimates of how that elasticity might change (if it does) as public capital is accumulated. 

### Relative price of infrastructure
One of the big questions for this calculation is the relative price of public capital, $p_Y/p_X$. This figure from FRED gives you a little sense of the scale of that change using a few different measures of the price of capital goods.

<iframe src="https://fred.stlouisfed.org/graph/graph-landing.php?g=E5R6&width=670&height=475" scrolling="no" frameborder="0" style="overflow:hidden; width:670px; height:525px;" allowTransparency="true" loading="lazy"></iframe>

The top line (in green) is the price index for GDP, with 1947 set at the initial value of 100. The three lines below that (blue, red, and purple) are different measures of the cost of capital goods. The first is the price of non-residential private capital goods, the second is the price of all private capital goods. The last is the price of government capital goods at the Federal level. I could add several more lines like this (state and local, private equipment, etc..) but the story always comes out about the same. Starting in the mid-1980s there is a sustained divergence in the price levels of GDP and capital goods, with capital goods becoming less and less expensive relative to GDP. 

You can't make too much of the actual numbers in this figure. I set all series to have 1947=100, which means I assumed that capital goods and the generic basket of all goods making up GDP were identical in price in 1947. That might be wrong. But we can say that capital goods have been becoming relatively cheap over time. In other words, I'm really confident that $p_Y/p_X$ fell over time, but I cannot be as sure that $p_Y/p_X$ is less than one. We'll play with that one. 

### The discount rate
The last piece, $r$, is probably the most interesting. In a normal NPV calculation this would be something like the interest rate that you can borrow at, or possibly an internal cost of capital. 

The temptation here is to use something like a Treasury bond rate, as that is what the government can borrow at. But I think that's not quite right. I'm not after whether the infrastructure "pays for itself" at the federal level by increasing tax receipts enough to offset the borrowing costs. If that were the case, then yes I'd want to use the government's borrowing costs as the discount rate. But then I'd also want to incorporate a tax rate into the calculation. 

What I want here is whether the infrastructure spending makes sense for the economy as a whole. In that sense it isn't much different than asking whether *any* capital spending makes sense. Because of this, what I want as the discount rate is the opportunity cost of this infrastructure spending. That is, if the government doesn't do this infrastructure spending, what kind of return could we get by using those resources as either consumption, or on some other kind of capital goods. 

Here there are a few options. One is the "full crowding out" option, where we assume that the new public capital goods come at the expense of a set of private capital goods that would otherwise be built. By "expense" here I mean that the labor and existing capital that go into building the public capital are not able to be used to build private capital. We are just substituting one type of capital for another. In this case we'd set $r = MPK - \delta$, or the discount rate should be the marginal return to private capital adjusted for depreciation. 

The paper I referenced above by Cubas gives some numbers for the return to private capital as well. Based on an elasticity of 0.3, and a Y/K ratio of 0.28, you get an MPK of 0.084. Even though the elasticity for private capital is higher, we have a lot more of it (a lower Y/K ratio), so the MPK is smaller than the MPX. That by itself doesn't tell us the public capital spending is worth it. We have to use this MPK value in the calculation of the NPV of the public capital to know. 

Given that, the "full crowding out" discount rate would be this MPK minus depreciation. Cubas also finds that the depreciation rate is similar for public and private capital, so $r = 0.084 - 0.046 \approx 0.038$ in this case.

At the other end of the spectrum would be an "idle resource" option, where we assume that the new public capital goods are built by employing otherwise idle workers and capital. In this case there is no opportunity cost to building public capital. We're not substituting for any private capital (or substituting for anything at all), and the right discount rate would be $r = 0$. In this case, the return on our idle assets (r) is equal to zero in the absence of the public capital spending. 

As is normal, the truth is probably somewhere in between, but these values give you some sense of the range we could be working with. 

### A range of estimates
Start with a pessimistic estimate. Let's say we know the MPX is 0.18, as described above. And let's say that $p_Y/p_X = 1/2$, meaning public capital goods cost twice as much as a bundle of GDP. Let's assume the "full crowding out" option holds, and beyond that let's assume that private capital doesn't even have any depreciation involved, so that $r = 0.038$. The last thing we need is a depreciation rate, and the Cubas paper above gives a number of $\delta = 0.046$ for public capital.

This stacks the deck against public capital about as much as seems plausible. What's the NPV of one dollar of public capital spending?

$$
NPV = \frac{MPX \times p_Y/p_X}{r+\delta} = \frac{0.18 \times 1/2}{0.038 + 0.046} = 1.07
$$

In this case, for each one dollar of public goods spending you get \$1.07 in NPV of GDP. One of the reasons I'm supportive of the infrastructure bill in general is because even under this pessimistic case the investments seem to make sense.

If you take an optimistic case, we could still have the MPX be 0.18. But now let's set $p_Y/p_X = 2/1$, meaning public capital costs only half as much as a bundle of GDP, and assume that we're in the "idle resource" world, with $r = 0$. Now the calculation is

$$
NPV = \frac{MPX \times p_Y/p_X}{r+\delta} = \frac{0.18 \times 2/1}{0 + 0.046} = 7.83
$$

Now we get \$7.83 in net present value for each dollar of public capital spent. That is a huge return, on the order of what you get from some calculations about the social value of R\&D. 

To me the least likely part of that optimistic scenario is the discount rate of zero. Even if we have idle resources now, we probably won't over the lifetime of the public capital. So let's try an intermediate case where we use the same MPX and the same relative price ratio. But now set the discount rate to 0.06, which is roughly the long-run return on equity, as a rough gauge of the opportunity cost of public capital. 

$$
NPV = \frac{MPX \times p_Y/p_X}{r+\delta} = \frac{0.18 \times 2/1}{0.06 + 0.046} = 3.39
$$

Still a big return, but not quite as big as before. In general, I think the basic structure here is going to deliver an NPV bigger than one under a reasonable set of parameter choices. The return to public capital appears large relative to the alternatives.

### Why might I be wrong?
You can play around with these numbers all you want. It is entirely possible to generate an NPV that is less than one dollar. Just make public capital relatively expensive, or assume the MPX is lower, or increase the discount rate and/or depreciation rate. The question is whether your estimates of those values can be justified. I think, given what I explained above, that my numbers are "right" in a very rough, to-a-first-order-approximation kind of way, and deliver a result that suggests this kind of spending could be positive for the economy. As with the last example, I think the return is high enough (like 3 dollars in NPV for 1 dollar in spending) that even if I'm a little wrong on some parameters it still passes the smell test. 

Maybe the most uncertain element of this whole calculation is that elasticity $\beta$. Cubas' number might make sense as a long-run average, but perhaps could be different depending on specific projects or times/places. A "bridge to nowhere" kind of project would presumably have a $\beta$ close to zero, and hence lower the NPV. On the other hand, the value of $\beta$ might be very large for specific projects that reduce transportation time between busy ports or for something like rural broadband that expands the available pool of labor for certain businesses. 

Last caveat. This calculation is made based on "public capital", and not everything in the proposed Biden infrastructure bill fits in that narrow definition. The point here is not to debate what the real meaning of the word "infrastructure" is, but that to do the NPV calculation for things like expanding long-term care you'd need to come up with different estimates of the marginal product of that program for GDP, the relative price of purchasing long-term care, etc. Things like that are more human capital than public capital, and it is certainly possible to estimate the marginal product of human capital, the depreciation of human capital, and the relative price of purchasing human capital. I might get into that in a different post some day. But we're over 2500 words at this point, so that's all you get.



