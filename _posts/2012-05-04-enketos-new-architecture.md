---
title: 'Enketo&#8217;s New Architecture'
author: Martijn van de Rijdt
layout: post
permalink: /enkets-new-architecture
categories:
  - apps
tags:
  - enketo
  - formhub
  - HTML5
  - Kobo
  - ODK
  - offline
---
As a follow up to the[ introduction of enketo][1] and my post about the [OpenRosa form format][2], I would like to explain the new architecture of enketo. Development work is progressing steadily. Most of the hard stuff in transforming the XML forms into HTML5 forms has been completed using the power of XSLT (wow!), PHP and JavaScript. There is a still a lot of work remaining with other aspects of the application.

 [1]: /an-introduction-to-rapaide/ "An Introduction to Rapaide"
 [2]: /survey-tools/ "Survey Tools"

For those familiair with the [Open Data Kit][3], [formhub][4] or [Kobo Toolbox][5], the following (slightly simplified) diagram should clarify how enketo will fit into these systems.

 [3]: http://opendatakit.org
 [4]: http://formhub.org "Formhub website"
 [5]: http://www.kobotoolbox.org/

![Enketo Diagram][6]

 [6]: ../files/2012/05/Enketo-architecture1.png "Enketo architecture"

Basically, enketo will provide a web-based alternative to ODK Collect or Kobo Collect for situations in which ensuring the availability and/or use of Android devices is not feasible or appropriate. It will seamlessly fit into existing systems that use ODK Aggregate. It will of course be able to [launch and work offline][7] in [modern browsers][8] and will therefore be suitable for situations where Internet connectivity is intermittent.

 [7]: /offline-capable-web-applications/ "Offline-Capable Web Applications"
 [8]: /humanitarian-aid-browsing/ "Humanitarian Aid Browsing"

The launch component validates the forms and facilitates user testing  before the forms become available to the enumerators to collect and enter data. A simplified version of this component will be made available in July/August (depending on other engagements) to a limited audience of ODK users. It will allow users to transform and play with their existing OpenRosa XForms and hopefully provide me with some useful feedback (send me a message or reply to this post if you’re interested in helping with this).

In the future, depending on the need, there could be an integrated enketo build and analysis component and maybe even a (fast PHP) version of a OpenRosa-compliant server to replace ODK Aggregate. Thankfully, this is not a priority as it is great to be able to use the facilities provided by ODK and Kobo (as well as by some other very interesting players such as [formhub][9]). I am particularly impressed with the current [ODK Form Builder][10] (tip: you don’t have to sign in to play around with this, just click cancel).

 [9]: http://blog.formhub.org/2012/04/09/new-insights-from-your-formhub-map/
 [10]: http://build.opendatakit.org "ODK Form Builder"

\[Edit: Replaced Rapaide with enketo\]
