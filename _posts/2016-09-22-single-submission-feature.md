---
title: Single Submission Surveys
author: Martijn van de Rijdt
layout: post
permalink: /single-submission-surveys/
categories:
  - Uncategorized
tags:
  - enketo
---

Enketo now offers the ability to conduct surveys that obtain just a single reponse from each user!

[![Screenshot of export button](/files/2016/09/feedback.png "Screenshot of feedback survey")](https://enke.to/single/4c7c494fbfd5cd59e56ef6c68381e77b)

### Why Use This

If you want to conduct a single-use survey by sharing a link, you can now use the awesome power and sophistication of [XLSForms](http://xlsform.org/) and Enketo. Finally, there is no longer a need to Monkey around with limited, outdated software for these types of surveys! Think for example of polls and user feedback surveys.

### How it Works

When the user submits a response to your survey ze will be automatically redirected to a page you specify or to a generic "thank you" page. If the user attempts to submit the same survey again, a message is shown: "You have already completed this survey".

### Demo

See [this demo](https://enke.to/single/4c7c494fbfd5cd59e56ef6c68381e77b) and submit your response.

### How to Use

No need to add anything to your XLSForm. You have the following options to use this feature for any form:

#### A. Be an activist

You could actively request any [Enketo-powered service](https://enketo.org/#tools) to leverage this new feature. Those services rely on your feedback to continuously improve.

#### B. Use your own Enketo Express installation

Make sure to populate the [new config.json item](https://github.com/enketo/enketo-express/blob/master/config/README.md#less-secure-encryption-key) and use this [API endpoint](http://apidocs.enketo.org/v2/#/post-survey-single-once) to request a webform URL.

#### C. Use the paid Enketo service.

Use this [API endpoint](http://apidocs.enketo.org/v2/#/post-survey-single-once) to request a webform URL from the paid Enketo service, or upgrade your form/data server when it has added the feature.


### Acknowledgements

This feature was co-sponsored by Enketo's Official 2016 Top Sponsor: [OpenClinica](http://openclinica.com/), and by Enketo LLC.

{% include feedback.md %}
