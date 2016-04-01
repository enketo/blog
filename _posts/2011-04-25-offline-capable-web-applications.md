---
title: Offline-Capable Web Applications
author: Martijn van de Rijdt
layout: post
permalink: /offline-capable-web-applications/
categories:
  - browsers
  - technology
tags:
  - Application Cache
  - HTML5
  - offline
  - Persistent Storage
---
![HTML5 badge][1]

 [1]: ../files/2011/04/HTML5_badge.png "HTML5 badge"

Traditional web applications are loaded from the server each time a users visits its web address in a web browser. Any user-submitted data has to be transmitted to the server in order to be stored. Without an Internet connection the application will not be able to launch and if an application was launched online but the internet connection is interrupted, it is no longer capable of storing or retrieving data.

## What is meant with offline-capable?

A web application can be called offline-capable if it can be launched without an Internet connection and maintains its (core) functionality whilst offline. Generally, two different modern technologies are used to create offline-capable applications.

![HTML5 Offline Storage icon][2]

 [2]: ../files/2011/04/Screen-Shot-2011-12-10-at-1.57.33-PM.png "HTML5 Offline Storage icon"

One is called the application cache and all it does is store a copy of the application inside the browser. Whenever a user browses to the application this local copy is loaded without any interaction with the server. This is therefore superfast! After the application has launched, the browser will check at regular intervals if a newer version of the application is available and if so will download it automatically. The next time you load the application (or refresh your browser) the new version will be loaded. If there is no Internet connection there is no problem.

The second technology allows the storage of data in the browser itself. This data is ‘persistent’ which means. it will still be there after you close the window, browser or shut down your computer.

## What do I need to install to use these technologies?

The great thing about these technologies is that they are Web Standards (related to HTML5) and should therefore work in any browser out-of-the-box without the need for plugins. All popular browsers support both technologies now except Internet Explorer (no application cache) [Edit: Support has been added from Internet Explorer version 10 onwards]. However, the application needs to be designed to be offline-capable. It is not something that can be added-on to an existing application by a user. So all you need to do when you find an offline-capable web application is use a [modern browser.][3]

 [3]: /humanitarian-aid-browsing/ "Humanitarian Aid Browsing"

## What does this have to do with Humanitarian Aid?

These offline web technologies were specifically meant to be used on mobile phones, because Internet connections are generally less reliable on phones. However, I see a fantastic opportunity for humanitarian aid contexts where Internet connections often exist but are expensive or unreliable. No alternative could match the advantages of offline-capable web applications in collaborative data collection in an emergency. More about that in a future post!
