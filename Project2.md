Unit 2 Project
==============

### Overview

The full stack experience!

You will be working individually for this project, and you'll be designing the app yourself. Remember to keep things small -- scope creep/feature creep is the biggest pitfall for any project!

___________________________________________________________________________________

### Goals (Real-World Application)

* Create user stories and a visual specification (wireframes) for your app before writing code
* Build a web application that interacts with any API
* Build an app that can create, read, update, and delete data in a SQL database
* Present your work to a technical audience (10 minute presentation)

___________________________________________________________________________________

### Technical Requirements

Your app must:
* Include documentation of wireframes you designed during the planning process
* Be written with ruby on the backend
* Use HTTParty to retrieve data from an API
* Create at least 5 RESTful routes with POST, PUT, GET and DELETE verbs using a ruby routing library (Using Sinatra or Rails).
* Use an ORM (default: active_record) to create a database table structure and interact with data using ruby
* Have some form of login for the user
* Properly manage packages using gems
* Have semantically clean HTML and CSS
* Be deployed to the public (default: Heroku)

___________________________________________________________________________________

### Bonus

These are for extra credit! Don't focus on these until you've hit the core requirements.

* Use a task tracking tool (Trello, Pivotal) to organize your work
* Include documentation of five user stories implemented by your app
* Style your app with Bootstrap, Foundation, or some other CSS library
* Interact with a second external API
* Change your DB schema and implement a migration to update your DB  

___________________________________________________________________________________

### Potential Projects

## Cheerups
The world is a depressing place, we're all staring at our shoes.

Your task is to create an app that will allow people to create and share "cheerups" - happy little quips to brighten other peoples' days. Cheerups will be small - limited to 141 characters. Members will be able to promote Cheerups that they like, which will increase their prominence, and boost the reputation of the Cheerupper.

We expect to attract people who are amused by spoiling things for others... if members are rated as "Dragdowners", their reputation and prominence will suffer.

---

## Feed aggregator
You will create an application to retrieve and save rss feeds into a database.

Users should be able to subscribe and manage their accounts, manage the feeds they wants to follow, archive / bookmark / socially publish the posts and define a feed that they follow as public or private on their profile and see other users profiles and feeds.

The efficiency of the DB is a primary concern - multiple subscriptions to a single feed should cause it to be stored only once.

---

## Dating website
Online dating is a multibillion dollar industry. Produce a new online dating platform, allowing lonely single tech-workers to hook up and find true love.

The users of your new platform should be able to search for other people based on age, sex, etc, view other people's profiles (but these views will be tracked and shown to the profile owner) and send private, secure messages.

Model your membership levels to allow new users a limited taster of the facilities you provide, and the ability to upgrade to a full/premium scheme.

---

### Fumblr - blogging platform
where users can create and style their own blogs

---

### Good Food Hunting
Everyone is a foodie.

---

## Photo sharing app
You will need to create a photo sharing application.

Users will be able to register and create albums and photos. Albums and photos will need to be named and described by their owners; and they will also be able to tag photos, and make tags searchable. Users will be able to view other users albums. They will be able to comment on the photos, and either up vote or down vote them. The homepage will display the most popular photos.

___________________________________________________________________________________

### Deliverables

* README.md file explaining the technologies used, the approach taken, unsolved problems, etc
* Link to Github repo for your app and show that you've been committing early and often, while utilizing good commit messages.
* URL of your deployed project
* Wireframes of your app (at least one)
* Link to your Trello board with the stories that you created

___________________________________________________________________________________

### Timeline

___________________________________________________________________________________

### Suggested Ways to Get Started

* Begin with the end in mind. Create your UI, REST API’s, front end JS, setting up the database  separately.
* Remember that your backend environment is different from your browser environment
* Don’t hesitate to write throwaway code to solve short term problems.
* Read the docs for whatever technologies / frameworks / API’s that you use. Most of the time, there is a tutorial that you can follow
* Commit early, commit often. Don’t be afraid to break something because you can always go back in time to a previous version.
* Write user stories in Trello (or other) to define your tasks. Keep stories as small as is reasonably possible.
* Write pseudocode before you write actual code. Thinking through the logic of something helps.

___________________________________________________________________________________

### Resources

- http://guides.rubyonrails.org/active_record_basics.html
- http://guides.rubyonrails.org/active_record_querying.html
- https://github.com/epoch/sinatra_generator
- http://www.sinatrarb.com/intro.html
- http://api.jquery.com/jquery.ajax/
