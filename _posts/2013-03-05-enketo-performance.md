---
title: Enketo starts to fly
author: Martijn van de Rijdt
layout: post
permalink: /enketo-performance
categories:
  - Uncategorized
tags:
  - enketo
---
Enketo has become much faster over the past few weeks (some people even say it is now faster than a peregrine falcon!).  
![enketo benchmarks chart][1]There are two sides to enketo’s performance.

 [1]: ../files/2013/03/benchmarks.png

Firstly, there is server performance, which is mostly concerned with transforming the underlying (XForm) format to a HTML form that works in a browser. For the average form this happens very quickly, usually within a second. However, we noticed that for very long forms with translations this transformation can take several minutes. For this reason we added a caching mechanism in January that reduced the ‘serving time’ to virtually zero for all launched forms after they have been loaded once (form previews can still take very long as these are not cached). This improvement is not reflected in the graph above as it was already in place before the benchmarks were created.

Secondly, there is client performance. This concerns everything that has to be done to display the form correctly in your browser (after it has been served by the server). In enketo, all the form logic is handled by the browser, so client performance plays a crucial role in making it all feel snappy. The graph above shows the client-performance improvements of the last few weeks\*. All forms now load significantly faster and the average form now appears instantaneously. Of course, the actual loading times vary depending on how powerful the computer/mobile is.

There is now only one major performance bottleneck remaining for forms with a lot of ‘relevant’ logic (aka skip logic) or calculations. In a few months this bottleneck will be addressed as well, but I hope most of the enketo users won’t even need this with the current blazing speed!

\*form 5 and form 6 were not even able to load successfully in January, hence the missing bars