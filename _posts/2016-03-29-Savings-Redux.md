---
layout: post
title: Savings, Savings, and More Savings
published: true
category: feed
tags: theory
---

This post is about savings. It is also a plea with Nick Rowe to slow the *)#*#@ down in posting things that get stuck in my head. I'm still working on this savings thing, and now he's got a [post](http://worthwhile.typepad.com/worthwhile_canadian_initi/2014/05/mrscc1r1mpkmrtcidmrtcidt.html) up about capital that I'm chewing over too. I have a life, Nick, for God's sake - pump the brakes!

That said, this is just a wrap-up of a [post](https://growthecon.com/blog/Savings/) about "What happens to GDP if I save 100 dollars"? And the point there was that this is an ill-formed question. Or at least it is ill-formed because we economists have screwed up by using the word "savings" for lots of different things. 

From the perspective of an individual, they earn income in dollars. That income in dollars is divided across several different uses, several of which could be called "savings". So let's be a little more exact. Write $$Inc_t = C_{t,now} + C_{t,later} + I_t + Bank_t$$.

This says that income can be spent in four ways:

1. $C_{t,now}$ is spending on consumption goods (or services) that are consumed in period $t$. For example, I bought a Diet Coke this afternoon, and just drank it. 
2. $C_{t,later}$ is spending on consumption goods that are *not* consumed in period $t$. For example, I bought a case of Diet Coke today, and it is sitting in my office. I will not consume all of those Diet Cokes before the close of 2016Q1. The purchase, though, gets added to 2016Q1 GDP, even though I don't consume all of them that quarter.
3. $I_t$ is spending on investment goods. Which, to be clear, is simply an arbitrary definition based on an assumption about what the goods will be used for. An example here would be if I bought a bulldozer. 
4. $Bank_t$ is the net change in my bank account in period $t$. This could be positive (I saved!) or negative (I borrowed!).

In plain English, numbers (2)-(4) all could conceivably be called "savings". For the purposes of thinking about macroeconomics, though, the distinction between (4) and (1)-(3) is crucial. (1)-(3), whatever you call them, all involve actually *spending* money. Whether you spend that money on goods that you then put in the pantry, or store underground, or use to produce more goods next period is irrelevant. You spent the money. "What happens to GDP if I save 100 dollars?" is, I'm sure, a question about what happens if I increase (4) by 100 dollars and decrease (1)-(3) in combination by 100 dollars.

What I said in the last post was that this *could* have an effect on GDP. It certainly lowers the velocity of money, so nominal GDP would fall. If prices are sticky, then real GDP would fall as well. 

If you have in mind a different concept of "save 100 dollars" then the effect on GDP could be different. If you mean that you raise (2) or (3) by 100 dollars while lowering (4) by 100 dollars, then this could *raise* GDP. You are now spending 100 dollars that you otherwise would not have. You have raised velocity, so nominal GDP goes up, and if prices are sticky, real GDP goes up too. Even though you are "saving" 100 dollars of goods by buying a bulldozer or putting your Diet Coke cans in the garage fridge for later, you still spent 100 dollars on goods - and that is all GDP cares about.

On the other hand, perhaps by "save 100 dollars" you mean that you lowered (1) or (2) by 100 and raised (3) by 100. That is, you "saved" by switching from buying consumption goods to buying investment goods. What effect does that have on GDP in period $t$? None (okay, maybe a 2nd order effect if investment good producers have a different propensity to spend their income than you do). You still spent the 100 dollars. In the future, this may effect GDP because the bulldozer may let you produce more output. In growth models, like the Solow model, "savings" mean spending money on (3). And the more you save, the higher will be GDP in the future. 

So the original question is best phrased as "What happens to GDP in this period if I put 100 dollars of my money in the bank this period rather than spending it on any kind of good or service?" And that *could* lower GDP today. If you mean a different kind of "savings", then you have to be specific. Or, as economists we have to teach you to be more specific. Or, as economists we have to push back and force you to be more specific. Because the answers are different depending on what you mean.

### Beware what follows
This last bit is all wild-ass speculation. If each person has an budget constraint of the form I gave above, we could add up across all individuals like this
$$\sum_i Inc_t = \sum_i C_{t,now} + \sum_i C_{t,later} + \sum_i I_t + \sum_i Bank_t.$$

Now, let's say that total spending on goods and services (the two C terms plus the I term) are equal to some multiple, $c$, of income. $c$ could be greater than one (so people are net borrowing) or less than (people are net saving). Then I have
$$(1-c) \sum_i Inc_t = \sum_i Bank_t.$$

The sum of income flowing to individuals has to add up to nominal GDP by the national income product accounts, so call $\sum_i Inc_t = PY$. Then plugging this in and rearranging I have
$$PY = \frac{\sum_i Bank_t}{1-c}$$.

If $(1-c)>0$, then this means people do not spend all their income, so it makes sense that $\sum_i Bank_t >0$. In other words, savings are accumulating in aggregate. If $(1-c)<0$, then it makes sense that $\sum_i Bank_t<0$, or savings are de-cumulating in aggregate. Either way, the ratio on the right is positive, and equal to nominal GDP.

Is this some kind of bastard quantity theory? I ask because I honestly don't know. I don't even know what to make of this, or if I made some kind of dumb mistake in here somewhere. Should I take this seriously? Could I think of the terms in the ratio becoming unlinked? That is, could we think that $c$ stays constant, but $\sum_i Bank_t$ goes up in absolute value, so nominal GDP goes up? What would it mean for the total flow of money into banks to go up, but for people's propensity to consume from their income to stay the same? 