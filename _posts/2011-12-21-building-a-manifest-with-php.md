---
title: Building a manifest with PHP
author: Martijn van de Rijdt
layout: post
permalink: /building-a-manifest-with-php/
categories:
  - browsers
  - technology
tags:
  - Application Cache
  - browsers
  - HTML5
  - offline
---
Warning: this is a technical post (an exception)…

As mentioned in a [earlier post][1] offline-capable web application technology has the potential to offer exciting opportunities for aid workers once suitable apps become available.

 [1]: /offline-capable-web-applications/ Offline-Capable Web Applications

For application developers, creating an offline-capable web application starts by ordering the browser to create a persistent copy of the application in its Application Cache. This is done using a manifest file with a specific format that contains a list of the required offline resources (files) plus a few other things. From experience, I can share that creating and updating such a manifest by hand when a developing a web application is a thoroughly frustrating exercise due to the difficulty to troubleshoot the many problems that can, and will, arise. Moreover, it is inconvenient to manually update the version number each time the code has changed. Ideally this should all be automated.

[![GitHub screenshot][2]][3]

 [2]: ../files/2011/12/Manifest_builder-300x190.png
 [3]: https://github.com/MartijnR/Manifest-Builder

I built a controller for the CodeIgniter (PHP) framework that does this. It dynamically creates a manifest and (usually) is able to tell when the application has changed by creating a hash of the resource content. If the hash changes (the ‘version number’ changes) the browser will refresh its Application Cache by downloading a new version of the application the next time it is online. It also includes a method to generate a Gears-formatted manifest (actually obsolete now, because [Gears has sadly been deprecated][3], before the remaining minority of Internet Explorer users finally switched to a [better browser][4]). The Manifest Builder has greatly simplified the development of the offline-capable survey application I am working on.

 [3]: http://gearsblog.blogspot.com/2011/03/stopping-gears.html
 [4]: /humanitarian-aid-browsing/ Humanitarian Aid Browsing

The Manifest Builder has been open-sourced (my first contribution!) and is available for download on [GitHub][5].

 [5]: https://github.com/MartijnR/Manifest-Builder