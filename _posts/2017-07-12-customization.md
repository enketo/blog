---
title: Enketo Customization
author: Martijn van de Rijdt
layout: post
permalink: /enketo-customization/
categories:
  - Uncategorized
tags:
  - enketo
---

I would like to highlight some changes in Enketo that may be interesting to developers using Enketo tools in their own applications.


### Background

The more popular Enketo becomes, the larger the demand for customization. Not all of these customizations are suitable for inclusion in the common Enketo libraries or the common Enketo Express application. For example, the customization may be specific to a particular group of specialized users or to integration into a specific custom system. 

One of the main sponsors of the Enketo Project that has frequent customization needs is [OpenClinica](https://www.openclinica.com). This clever company is very aware of the high long-term costs of forking Enketo's form engine - Enketo Core - and has tried to avoid it by investing in Enketo tools. (Thanks OpenClinica!)

Whenever a customization is required that does not belong in the common Enketo tools, an evaluation is made on how to best include it in a way that:

1. avoids _forking_ Enketo libraries and
2. avoids _changing common files_ in ports of Enketo Express that would increase maintenance (merging) costs.

Both of these design criteria usually result in reorganizing the code in the common tools to make them more extensible. 

Despite very substantially changing the behavior of the engine, OpenClinica is still using Enketo Core as [published on npm](https://www.npmjs.com/package/enketo-core) and therefore will continue to easily benefit from all the ongoing improvements made to it. Merging changes in the main Enketo Express app into their port is also usually painless.


### Configuration

In some cases, it has made sense to add alternative form engine behavior and expose this via new configuration options. Examples of recent additions to Enketo tools include:

* [validate related constraints continuously](https://github.com/enketo/enketo-core#validatecontinuously) instead of only upon submission
* [turn off page-flip validation](https://github.com/enketo/enketo-core#validatepage)
* [do not clear the values of an irrelevant question immediately](https://github.com/enketo/enketo-core#behaviour-of-skip-logic)
* [piwik analytics](https://github.com/kobotoolbox/enketo-express/blob/master/config/README.md#piwik) in Enketo Express
* [disable save-as-draft](https://github.com/kobotoolbox/enketo-express/blob/master/config/README.md#disable-save-as-draft) in Enketo Express


### Widgets

Widgets have been modular for a while now. A widget lives in its own folder and is easy to enable or disable in a particular application. It is also straightforward to add your own custom widget in your own application and still use the common Enketo Core library. Sometimes these widgets make it in the official Enketo Core library without being activated by default such as the [ArcGIS geo widget](https://github.com/enketo/enketo-core/tree/master/src/widget/geo-esri) contributed by the [Survey123 team at Esri](https://survey123.arcgis.com/).


### Evaluation Cascade

It has recently become possible to augment the most elementary part of Enketo's form engine by adding methods at the end of its standard evaluation cascade. A good example can be found [here](https://github.com/OpenClinica/enketo-express-oc/blob/master/public/js/src/module/Form.js) (`Form.prototype.evaluationCascadeAdditions = [ constraintUpdate ];`).


### XPath evaluator

Due to a requirement by [Medic Mobile](https://medicmobile.org/) for their application, and thanks to their contribution, Enketo Core provides an easy way to swap [its XPath evaluator](https://github.com/enketo/enketo-xpathjs) with [another one](https://github.com/medic/openrosa-xpath-evaluator) of your choosing.


### Everything else

A major recent change is that Enketo Core now exposes pretty much everything. It is now possible to replace individual functions and override complete modules without forking. Naturally, this is one of the more risky endeavors, as there are no guarantees that Enketo's internal API stays completely stable, but in some cases the benefits of doing this (vs. forking), outweigh the potential future costs. The risks can also be mitigated by adding sensible tests and using Continuous Integration.


### Recommended customization approach

Should you have a need to customize an Enketo library or application, we recommend first opening a GitHub issue in the appropriate repository. If there is interest to include your customization in the common tools, this would be a win-win situation for all. If not, there will be ways we can help you develop a plan that minimizes the future headache of keeping your application up-to-date with the latest version of the Enketo tool(s).


