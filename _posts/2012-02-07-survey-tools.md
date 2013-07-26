---
title: Survey Tools
author: Martijn van de Rijdt
layout: post
permalink: /survey-tools
categories:
  - apps
tags:
  - enketo
  - formhub
  - javarosa
  - Kobo
  - ODK
  - openrosa
---
As part of the process to re-think the further development of [Enketo][1], I have been browsing ‘the tubes’ to look at other available tools and standards to link with or to adopt. I must say, it has been very enlightening! There are some active and very supportive communities out there that are working on cutting-edge tools to collect data in developing countries.

 [1]: ../an-introduction-to-rapaide/ "An Introduction to Rapaide"

[![Open Data Kit logo][2]][3]

 [2]: ../files/2012/02/odk_logo.png
 [3]: http://opendatakit.org "OpenDataKit website"

In particular the [Open Data Kit (ODK)][3] and the [Kobo Toolbox][4] (the latter is a spin-off of the former) are very interesting open-source toolkits. Both kits are using the [JavaRosa][5] flavour of the [XForms][6] standard. The fact that the tools are open-source and are using a standard means their tools are interchangeable (or at least could be). There are other tools out there that are considering adopting this standard (Voozanoo e.g.), which I take as a very good sign that helps to confirm that this is the standard Enketo should incorporate.

 [3]: http://opendatakit.org/
 [4]: http://www.kobotoolbox.org/
 [5]: http://www.dimagi.com/javarosa/ "JavaRosa description on Dimagi web site"
 [6]: http://en.wikipedia.org/wiki/XForms "XForms description on wikipedia"

[![Kobo Toolbox logo][7]][8]Both ODK and Kobo toolkits include the use of Android devices for the actual collection of data in the field. I can think of many contexts and types of surveys where this would be a very appropriate choice. For the key target user group of Enketo – aid workers conducting needs assessments in an emergency – this may be less feasible. For this group, I think an approach using paper and pen in the field and a browser on any old laptop for efficient data entry will remain a more practical solution for the data collection and entry components of the toolkits (I will go into this a bit further in a future post). This means that Enketo could potentially serve as a complementary component for these great toolkits. It would seem perfect!

 [7]: ../files/2012/02/kobotoolbox_logo-300x71.jpg
 [8]: http://kobotoolbox.org

I hope to learn more about the tools and the future plans of these interesting projects in the next few weeks to be able to make some decisions on how to proceed with Enketo.