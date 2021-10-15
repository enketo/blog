---
title: Huge leap in performance
author: Martijn van de Rijdt
layout: post
permalink: /performance-leap/
categories:
  - Uncategorized
tags:
  - enketo
---

### A new XPath evaluator

We have just completed the most exciting, and largest, Enketo improvement project in years - [a new XPath evaluator](https://github.com/enketo/openrosa-xpath-evaluator)! If you are not familiar with XPath, it is the _logic language_ of forms in the ODK ecosystem which is used in _calculation_, _constraint_, _relevant_, _required_, _choice\_filter_, and _default_ formulas.

Back when Medic [adopted Enketo](https://medic.org/stories/we-built-the-mobile-app-that-health-workers-deserve/) in their mobile data collection tools for Community Health Workers, they created a new XPath evaluator to replace the one Enketo was using. This new evaluator turned out to be much faster as it more fully leveraged the native XPath evaluator that is built into modern browsers. 

At the time it was created, it did not yet have all the capabilities that the Enketo Project needed to replace its own XPath evaluator. Moreover, the need to support legacy browsers (without a native evaluator) were still holding us back. However, we started planning a long time ago to make Medic's evaluator fully [ODK XForms](https://getodk.github.io/xforms-spec/) spec-compliant and have since [dropped support for legacy browsers](./Enketo-Express-mar-2020-update/#farewell-internet-explorer).

With funding from [DIAL](https://www.osc.dial.community/), [OpenClinica](https://www.openclinica.com/), and [Medic](https://medic.org/) this XPath library is now fully ready to take over logic evaluation across all Enketo tools!

**Enketo Express version 2.6.0** and Enketo Core version 5.17.0 onwards include the new evaluator.

And **WOW**, the boost in performance has exceeded all expectations! We have evaluated the impact on some extremely slow real-life forms and shared some results below. I should note it is not entirely straightforward to predict the impact for a particular form. We have found (fast) forms that had no noticeable change in loading performance. We have not found any forms that have become slower.

#### Large internal lists of options

A form containing thousands of "select" options (found [here](https://github.com/XLSForm/pyxform/issues/285)) took over 5 minutes to load with the old evaluator. It now takes 0.4 seconds. A **750x** improvement making a previously unusable form perfectly usable! Forms with large 'internal' select lists definitely experienced the largest performance improvement (forms with 'external' lists were already fast).

#### Large number of repeat instances

A form containing 45 repeat instances (with repeat_count) from an OpenClinica user, improved its loading performance from 25 seconds to 6.5 seconds - a respectable **4x** improvement.

#### Complex constraint expressions

A form with about 1,000 questions with an enormous quantity of complex constraints from an OpenClinica user improved its loading performance from 7.5 seconds to 0.3 seconds - a **25x** improvement!

### Thanks

Thanks so much to [Medic](https://medic.org/), [DIAL](https://www.osc.dial.community/), [OpenClinica](https://www.openclinica.com/) for making this epic improvement project possible!

{% include feedback.md %}
