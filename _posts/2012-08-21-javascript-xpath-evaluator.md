---
title: JavaScript XPath Evaluator for OpenRosa
author: Martijn (admin)
layout: post
permalink: /javascript-xpath-evaluator/
categories:
  - apps
  - technology
tags:
  - enketo
  - openrosa
  - XPathJS
---
After finding a suitable [open-source form format][1] to use in enketo there was need to properly evaluate the very powerful processing logic it supports. For example, the format allows you to describe how one survey question depends on the answer to an earlier question. This logic is written in a language called *XPath* and I therefore needed an *XPath Evaluator*. Since enketo is offline-capable this processor would have to work without server interaction inside a browser. This meant I could not use the open-source Java libraries provided by the OpenRosa project.

 [1]: /enketos-new-architecture/ "Enketo’s New Architecture"

Initially, I had high hopes for the (crazy fast) native XPath evaluator built into modern browsers. However, it became apparent that it is not really possible to extend this with custom functions. Moreover, browsers do not all implement XPath in the same way (sigh…). XPath is an extensible language and has been extended with useful functions in OpenRosa, so extensibility was crucial. Eventually, I found an excellent cross-browser open-source project called[ XPathJS ][2]by Andrej Pavlovic (Andrej, thank you for making this available!). I forked his project and simply added the custom functions and the custom (date) datatype that OpenRosa has included in their format.

 [2]: https://github.com/andrejpavlovic/xpathjs "XPathJS on GitHub"

[![xpathjs_openrosa github screenshot][3]][4]

 [3]: ../files/2012/08/Screen-Shot-2012-08-21-at-11.33.20-AM-300x220.png

My port is now available on GitHub and is called [enketo-XPathJS][4]. Hopefully, this project will contribute to the creation of more OpenRosa clients for the browser and allow the format to be adopted on a wider scale. I think it is a great thing for organizations when they can easily swap different components (data server, data entry client, form builder) of their information management system. The ability to switch to something new when it becomes available and may meet requirements better – and even to do this on a per-survey basis – is a great advantage compared to systems using proprietary formats and communication protocols. On this note, it is worth mentioning that [formhub][5] just added a feature to allow survey administrators to [post data to an external site][6], which supports this ability to swap and try out new tools. Very cool!

 [4]: https://github.com/enketo/enketo-xpathjs "Enketo-XPathJS on GitHub"
 [5]: http://formhub.org "formhub web site"
 [6]: http://blog.formhub.org/2012/08/06/posting-to-external-site/ "formhub blog post on posting data to an external site"
