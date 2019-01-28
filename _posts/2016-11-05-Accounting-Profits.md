---
layout: post
title: GDP, Productivity, and Financial Performance
published: true
category: feed
tags: rich
---

In my last [post](https://growthecon.com/blog/Manufacturing/), I got upset because people were using measures of productivity as measures of firm or industry financial performance. And as part of that, I made the point that GDP (which is part of measuring productivity) has nothing to do with profits, or financial success in any way. A few people asked me about this, because it wasn't obvious to them.

I think part of the issue is that lots of people interested in economics are business literate, meaning they understand what is on financial statements, and want to translate those concepts to the economy as a whole. 

The problem is that the economy as a whole is not just one big aggregate business. But, you can get some insight into what GDP is actually measuring by building it up from business accounts. So let's give that a try.

This is a stylized example of an income statement you could find from any firm:

$$
Rev - COGS - Exp - Wage - Int - Div - Rent - Dep - Tax - Bull = Earn
$$

The individual items are as follows:

1. **Rev**: Revenues
2. **COGS**: Cost of goods sold. Think of raw materials.
3. **Exp**: Expenses, specifically those which are paid to other firms, like advertising costs, legal costs, and the like.
4. **Wage**: Salaries and wages.
5. **Int**: Interest payments on any loans or bonds.
6. **Div**: Dividends.
7. **Rent**: Rent on property and/or items of intellectual property like patents or copyrights.
8. **Dep**: Depreciation of fixed assets.
9. **Tax**: Corporate income taxes. It's important here to note these are *not* sales taxes or excise taxes like tariffs.
10. **Bull**: All sorts of other bulls%&^ that firms use to limit the earnings they need to pay taxes on.
11. **Earn**: Reported net earnings.

In evaluating a firm, you probably look first at *Earn*, which indicates wow much money did they made. *Earn* is the number you would use in a P/E ratio if you were evaluating the a public firm's stock. You might also look at different concepts of earnings, like EBIDTA, which would be like *Earn + Int + Dep + Tax + Bull*. Regardless, the purpose of this income statement is to evaluate the financial success of the company. You are interested in the bottom line number, earnings.

Let's take this and use it to build up GDP. All that's required is basic addition and subtraction. First, rearrange the income statement in the following way

$$
(Rev - COGS - Exp) - (Wage + Int + Div + Rent + Dep) = Earn + Bull + Tax
$$

There are two groupings on the left-hand side, and we'll get to those in a moment. Before that, note that I've put *Earn + Bull + Tax* together on the right-hand side. I'm going to rename this combined term as *Profits*. 

$$
(Rev - COGS - Exp) - (Wage + Int + Div + Rent + Dep) = Profits
$$

There are a couple of questions here. Why is *Bull* part of *Profits*? Because *Bull* is purely accounting gimmick stuff to mitigate taxes. So while they list it like any other expense, we will not. Next, why is *Tax* part of *Profits*? Because what happens to those profits after they are made is a different question than how big those profits actually are. *Profits* is really *Profits before corporate income taxes*. 

Next, move that grouping of wages and interest and other items over to the right-hand side.

$$
Rev - COGS - Exp = Wage + Int + Div + Rent + Dep + Profits
$$

The term on the left-hand side is called *value-added*. The firm sells goods and services for *Rev*, and that is the total value of those goods and services. But those goods and services required the value of *COGS* and *Exp* to produce, so the *value-added* of the firm is the difference of their revenues and these expenses. Now we've got:

$$
ValueAdded = Wage + Int + Div + Rent + Dep + Profits
$$

Great. At a firm level, we have that their value-added is, by definition, equal to their wages, interest payments, dividends, rents, depreciation, and profits. Whether that *Profits* term is positive or negative is unknowable without knowing the other terms.

Now, this equation holds for all the firms in the economy. It holds even for those firms who don't produce formal financial statements, like your local food truck. It holds for federal, state, and local governments, who differ in how they assign money to different categories. Sum up both sides of the equation across all firms or entities that produce value added.

$$
GDP = \sum Wage + \sum Int + \sum Div + \sum Rent + \sum Dep + \sum Profits
$$

The left-hand side is GDP, because GDP is the sum of value-added across all firms, by definition. Go backwards, and note how GDP is built up. It is the sum of value-added across firms. Value-added is *Rev - COGS - Exp*, which does not tell you anything about profits at the firm level.

GDP can be decomposed among all those things on the right-hand side. And in fact the BEA reports exactly the right hand side in their Gross Domestic Income (GDI) estimate, which is equal to GDP except for a small statistical discrepancy (because adding up all these things across firms is hard).

GDP (or GDI) tells you nothing about the financial health or success of firms. *Profits* could be big, or small, or negative, or positive. As a company, Amazon lost about 240 million dollars in 2014. But that doesn't mean the services it provided didn't count in GDP. They provided about 26 billion in value-added the same year. Sears Holding Company lost 1.13 billion dollars in 2015, which was better than the 1.68 billion they lost in 2014. At the same time, Sears Holding contributed about 5.8 billion to GDP in 2015, and 7.1 billion to GDP in 2014. It is not GDP's problem that Sears seems to have more combined costs, like wages, rent, and interest, than can be covered by their value-added. It doesn't change the fact that Sears provided goods and services to the economy.

Is this a problem with GDP? The answer to that depends entirely on what you are trying to measure. If you are interested in knowing the value of all the goods and services produced in an economy, then GDP is what you want. To borrow a British phrase, it does what it says on the tin.

But if you are interested in knowing if firms (or industries) in the economy are "doing well" or "successful" or "healthy", then you should look at firm financial statements, and things like net earnings, or EBIDTA, or net income from continuing operations, or operating income, or gross profit, or whatever is your favorite financial indicator. Using those, you might decide that Amazon or Sears will go out of business in the future because they lose money. Or decide to sell or buy stock in those companies. Or decide to sue their CEO, or vote for a new board. But GDP isn't here to tell you those things. GDP doesn't care. 

Which is why productivity measures like multi-factor productivity (MFP) or labor productivity are *not* measures of firm health, success, or financial performance. These measures take GDP (in aggregate, or at the industry level) and divide it by numbers of inputs used. As GDP is not a measure of firm financial success, productivity cannot be a measure of firm financial success either.
