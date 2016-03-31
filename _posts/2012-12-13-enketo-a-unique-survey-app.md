---
title: 'Enketo: Why so awesome?'
author: Martijn van de Rijdt
layout: post
permalink: /enketo-a-unique-survey-app/
categories:
  - apps
tags:
  - enketo
---
It has been 3 months now since enketo was quietly launched on [formhub.org][1] and I have had a great time so far at [Modilabs][2]. We are getting encouraging feedback from users and have many ideas on how to make enketo even more awesome.

 [1]: http://formhub.org "formhub web site"
 [2]: https://github.com/modilabs "GitHub repositories of modilabs"

![enketo screenshot][3]
I started enketo to provide a way to address the lack of modern and efficient IT tools in the developing world. As a former aid worker, I had first-hand experience of this problem and it seemed mostly related to poor Internet connectivity. Enketo was designed to have the benefits of a modern web application but without the ‘always-online’ dependency. This became possible by utilizing new offline-capable web technologies related to HTML 5.

 [3]: ../files/2012/12/ss1.jpg

Enketo was initially targeted at aid organizations working in emergencies to conduct collaborative needs assessments. However, during the course of the project its potential in a much wider context became clear. It evolved from a basic app using a custom JSON form format to a powerful application that is able to handle complex forms in the [open-source OpenRosa Xform format][4]. It is fully compatible with other applications in the OpenRosa ecosystem,  and like [formhub][1], [OpenRosa][5] and [ODK][6], enketo is 100% free and [open-source][7].

 [4]: http://opendatakit.github.io/odk-xform-spec/ "XForms as supported by OpenRosa"
 [5]: https://bitbucket.org/javarosa/javarosa/wiki/Home "JavaRosa wiki"
 [6]: http://opendatakit.org "OpenDataKit web site"
 [7]: https://github.com/enketo/enketo-express

Enketo is a lightweight app that does one thing – data entry – and tries to do that well. It forms one component of a system that together with form building, data aggregation and data analysis tools provides a complete solution to collect, create and share information. The unique combination of key features that enketo offers are:

*   **low technical requirements** - It only requires a modern browser to run. It can therefore be deployed by users very quickly on pretty much any laptop or desktop and is becoming quite usable on mobile devices as well.
*   **print-friendly forms** - This facilitates old-school data collection (and modern data entry) with pen and paper without the need to maintain a separate print-version of the form.
*   **offline-capable** - Forms in enketo open without an Internet connection (after a form has been opened once online, a copy is kept inside the browser). A user can just bookmark a form and from then onwards access it whether offline or online. Enketo also safely stores entered data in the browser and uploads records automatically (e.g. to [formhub][1]) when the user is connected to the Internet. Only after a successful upload, the data is deleted from the browser. A user can safely close the browser or laptop and work for weeks (or months) without an Internet connection!
*   **open, free and compatible** - Due to its openness and compatibility with a popular standard, it is relatively easy to integrate enketo into existing OpenRosa systems such as was done in [formhub][1].

In the next few months users can expect improvements in the general user interface, print-friendliness, mobile-friendliness and support for authentication. Moreover, in my spare time, I’m working on the launch of enketo as a standalone app that will be hosted on enketo.org.
