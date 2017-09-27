# README

DOCUMENTATION:

Words is a web application built with Ruby on Rails that allows the user to enter a url and view all the displayed text on the page. As such, Words exposes a RESTful API, letting the user queue URL's for the application to parse and delete the tasks once they are no longer needed.

To parse the text, the application uses Nokogiri to scrape the text from the webpage. Once a task is assigned, a "job" is placed on the queue, which is stored in a model. While the task is still being worked on, the status of the task will be shown as incomplete. The user will not be able to view the results (the text gathered from the webpage) until the task is fully complete. From here, the user can re-view the results as often as he or she would like, or delete the task. 

The general structure of the model, view, and controllers was scaffolded, and then adjusted to suit the desired application flow. Overall though a fairly straightforward project, I began this in an effort to familiarize myself with Ruby on Rails as well as full-stack development. Having previously worked soley with back-end, or soley with front-end, it was interesting understanding how they interact with each other in the Rails model view controller framework.
