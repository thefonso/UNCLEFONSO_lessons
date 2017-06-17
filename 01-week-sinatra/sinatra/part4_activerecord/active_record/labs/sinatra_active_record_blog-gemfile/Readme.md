Sinatra ActiveRecord Blog
==========

Gem Dependencies
--------------
**tux**
**bundler**
**rake**

-Defined environment variables in your ~/.bash_profile for DB login

-The existence of a database called "sinatra_blog_development"

Definitions:
--------------
**ORM (object-relational mapping)**

**MVC**

**Rakefile** -a file that holds "automated tasks" that ruby can run as one off commands.

**Gemfile*** -a file that holds a list of Gemdependencies for your app.

**database.yml*** -a file that holds your database configuration data.

**Migration** - Ruby code that makes changes to your database through an abstraction layer/API.

Links
---------------
[ActiveRecord](http://guides.rubyonrails.org/active_record_querying.html)

[Active Record API on Associations](http://api.rubyonrails.org/classes/ActiveRecord/Associations/ClassMethods.html)


--------------

Instructions
==============

For Instructor
--------------

1. Create and explain starter files:

```
app.rb
config.ru
Gemfile
Rakefile
models/post.rb
config/database.yml
config/environments.rb

```
2. Create empty migration file
3. Fill in the first migration file
4. add index blog post view
5. setup env.rb and 
6. run:

```
 rake db:migrate
```

(note the newly created schema file)

Student-Lab
-----------

Students will be able to extend the Sinatra blog using active record and implement an additional feature.

1. Create a "Blogger" model and "Session" model.
2. Make a show/edit/new/signin page for Blogger
3. Blogger should be able to login.
4. Blogger should be able to see their name at the top of the page.
5. Blogger should be able to see their name at the bottom of any posts.
6. Blogger should be able to create a new session (i.e. sign in)
7. Blogger should be able to delete a current session (i.e. sign out).

    