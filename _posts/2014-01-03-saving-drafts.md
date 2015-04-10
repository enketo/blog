---
title: Draft Records
author: Martijn van de Rijdt
layout: post
permalink: /draft-records
categories:
  - Features
tags:
  - enketo
---

In a [previous post](http://blog.enketo.org/sponsorships-2013/), I highlighted the investment of the [World Health Organization](http://www.who.int/) (WHO) is making in improving Enketo Smart Paper. One of the more visible results of this funding is the ability to save records as a draft to continue them at a later time. This feature is now available for use on enketo.org and formhub.org! 

![Save as Draft](../files/2014/01/save-draft.png "Save as Draft")

Enketo Smart Paper was built from the ground up to be _offline-capable_, i.e. to be able to launch offline and to save records persistently in the browser until some time in the future when a connection is available and they can be uploaded to the server. This means that saving records as a draft did not require major changes in the existing architecture.

We tried to make the feature as straightforward as possible without cluttering up the interface. The default has remained unchanged, but you will now see a checkbox to mark a record as draft above the Submit button. Draft records will __never__ be submitted to the server and are easily recognizable in the sidebar (with a little pencil icon). To load a draft record, simply click on it. 

![List of Draft Records](../files/2014/01/draft-records.png "List of Draft Records")

To make it easy to find a draft record later in a long list of records, you have the option to give it a name. This name exists locally in the browser storage only and will not be transferred back to the server.

To keep the feature safe, robust, affordable and free of fluff, final records cannot be loaded/edited/updated. When a record is saved without marking it as a 'draft', it is considered cleared for uploading as soon as a connection is available. Enketo will attempt to upload it immediately.

This is just one of a list of improvements sponsored by WHO in January and February. More to follow soon! 

{% include feedback.md %}


