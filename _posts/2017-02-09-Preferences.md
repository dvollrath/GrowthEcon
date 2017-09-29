---
layout: post
title: Do new products make you worse off?
published: false
category: feed
---

Reading Nick Rowe posts is like getting a song stuck in my head. I read it, think "Wow, that was fun", and then I think I'm going to go on with my day. But a few hours later, it is still in there bouncing around my head, on repeat. And I can't get it to stop until I work through the whole thing again. It's like I'm Cartman, and Nick keeps humming the opening part of "Come Sail Away".





I think this comes down to three different situations.

Did you realize Bananas existed before they were available? This seems like a silly question, but depending on your preferences, it matters for your welfare after Bananas become available. 

To begin, let's say you have R units of resources, and one resource can produce one fruit. At first, you only know how to produce apples (A), so A = R. And then you learn later how to produce bananas (B), so that R = A + B. 

Start with the situation where A and B are perfect substitutes once B is introduced, so U = A + B when both A and B are available. Prior to that, if you *knew* B was possible, but we just couldn't produce them, your U = R + 0 = R. Introducing B could only raise your utility. At worst, you could always keep just consuming A and have U = R + 0 = R. However you split up your consumption, though, you have U = A + B = R. 

If you didn't know that B was possible, then your utility prior to B being introduced is U = A. As you can see, this isn't any different from the situation where you *knew* B was possible, as U = A = R. So again, introducing B to someone who didn't even realize B was a thing ("who could have dreamt of skinny yellow fruit!") can't lower their utility. No matter how you split up consumption, you have U = A + B = R. With perfect substitutes, your utility is dictated by the amount of R.

Now flip over to think about the case where A and B are complements once B is introduced, so U = min(A,B). Prior to that, if you *knew* B was possible, but we just couldn't produce them, then your U = min(A,0) = min(R,0) = 0. Introducing B could only raise your utility, because again, at worst, you could always consume just A and get U = min(A,0) = 0. You'd probably choose to consume A = B = R/2 and get U = min(R/2,R/2) = R/2. 

But if you *didn't even know B was possible*, then your utility prior to B is U = min(A) = min(R) = R. Now, when I introduce B, your utility becomes U = min(A,B), and it is possible that your utility *falls*. If you do exactly what you did before, and just consume A, then your utility is now U = min(A,0) = 0. You are potentially *worse off* for knowing that B exists. If you split up your consumption equally, with A = B = R/2, then you get U = min(R/2,R/2) = R/2, which is again lower than what you had before you even know B was available.

What's going on here? Is it really true that introducing a new product that we have never heard of before could lower welfare? This seems counter-intuitive, and in this case I think your intuition is right, not the math. If the utility function *changes* with the introduction of a new product, then strictly speaking you cannot compare utility before to utility after. Utility functions are ordinal only, meaning that U = min(A) can tell us how to rank different amounts of A relative to one another. And U = min(A,B) can tell us how to rank different bundles of (A,B) against one another. But the actual number that gets spit out for U cannot be compared across utility functions.

In the case where utility was perfect substitutes, U = A + B, this problem disappeared because of a quirk. If two items are perfect substitutes, then by definition they are identical from the perspective of the utility function, so it doesn't matter if we have one or the other. But this is just a knife-edge case. Any deviation from perfect substitutes and technically we cannot compare utility functions from before the introduction of a good to after the introduction. 

What does this mean for calculating real GDP? The only way to make real GDP comparable 