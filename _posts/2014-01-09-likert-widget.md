---
title: Likert Widget
author: Martijn van de Rijdt
layout: post
permalink: /likert-widget/
categories:
  - Features
tags:
  - enketo
---

Enketo Smart Paper now includes a __Likert widget__ to enable the use of [Likert scales](http://en.wikipedia.org/wiki/Likert_scale) in surveys.

![Likert Widget](../files/2014/01/likert.png "Likert Widget")

To use a Likert widget just add appearance _"likert"_ to any _"select-one"_ question. Search for `likert` and `agree5` in the [demo webform](https://ee.kobotoolbox.org/x/8JGrcU96) and [form source](https://docs.google.com/spreadsheets/d/1KLQiQyQ5BlN_wd-83p8Eb6xIU-TZp-yvzgrm20HecRI/htmlview#) to learn more.

To facilitate the easy calculation of a Likert scale (by adding up the values of Likert items), you'll probably want to make sure you use _numeric values_ in those choice lists. You can perform the calculation either in the form itself (as done in the demo) or in your analysis.

This brand new feature was sponsored by [WHO](http://who.int) through Ona.

Happy Likert scaling!

{% include feedback.md %}
