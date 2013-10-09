---
title: 'Enketo Open-Source Developer Community taking off'
author: Martijn van de Rijdt
layout: post
permalink: /open-source-community
categories:
  - apps
tags:
  - enketo
---

Enketo Open-Source Developer Community taking off

A significant external contribution to Enketo is underway by [ThoughtWorks](http://www.thoughtworks.com/)’ Bangalore office in India. Thoughtworks (in collaboration with Modi Labs) also handled much of the development for an [Android app](http://modi.mech.columbia.edu/tips-for-tech-training-how-were-introducing-dristhi-to-indias-rural-community-health-workers/) that includes forms powered by Enketo. Thoughtworks is contributing to the Enketo form engine by embarking on a project to develop a much faster [replacement](https/github.com/kirang20/wgxp-java-rosa) of Enketo’s [XPath Evaluator](https://https://github.com/MartijnR/xpathjs_javarosa). When this fork (of a project by Google) is complete, form logic evaluation will become much less of a performance hog. Complex forms with advanced skip logic and validation will load and run significantly faster!

![community](../files/2013/10/community.jpg)

This is a very encouraging milestone for Enketo and hopefully signals the (re)start of an active open-source developer community around Enketo. To further facilitate this we have made it much easier to start working on Enketo by splitting the fairly large codebase up into several repositories. 

The key repository is [enketo-core](https://github.com/MartijnR/enketo-core) and includes everything required to parse an Enketo form, evaluate its logic and make it look awesome. The idea is that by making it attractive to use as a building block (as a git submodule which is easy to keep up to date) to develop an enketo-powered app, we will automatically start receiving contributions from other developers. At the moment the before-mentioned Android app, [enketo.org](https://enketo.org) and [formhub.org](https://formhub.org) are all build around enketo-core. Several other organizations have expressed interest in developing new apps around it. I personally, would love to develop a Node.js app around enketo-core (one that doesn't use subdomains for each form - am looking for a client with a similar goal by the way).

In the next months, you can expect enketo-core to become modernized, get proper documentation and become generally awesome for developers (like our [API documentation](http://apidocs.enketo.org)). There is still a way to go but it will happen! If you’re a developer, check out the [requirejs branch](https://github.com/MartijnR/enketo-core/tree/requirejs) if you are curious to see where it is headed. Enter the [developer forum](https://groups.google.com/forum/#!forum/enketo-dev) or create an [issue](https://github.com/MartijnR/enketo-core/issues) on GitHub if you have ideas, would like to discuss contributions or make comments related to enketo-core (or the libraries it depends on).