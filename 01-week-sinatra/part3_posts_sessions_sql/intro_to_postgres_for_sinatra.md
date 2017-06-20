#Intro to Postgres
(text needs to reflect Sinatra not Rails)

This file will show you how to install Postgres onto a Mac

- Students will be able to use postgres in a rails app
- open the postgres server command prompt
- install and use the pgadmin tool
- install postgres in a Rails app

##Installation:


###Step 1 - download the [postgresapp](http://postgresapp.com/)

control+click to install it in your applications folder

go to your terminal or iterm2 command line prompt and type...

	psql postgres
	
inside the postgres=# prompt type...

	CREATE EXTENSION "adminpack";
	
	CREATE ROLE rails WITH createdb login password 'rails';
	
then quit psql by typing...

	\q


For each new Rails app, go inside your database.yml file...inside the development section, as the username and password, place rails...

```
development:
  adapter: postgresql
  encoding: unicode
  database: pgtestapp_development
  pool: 5
  username: rails
  password: rails
```



###Step 2 - download and install [pgadmin3](http://www.pgadmin.org/download/macosx.php)

This is not necessary to make postgres work on your system. This is only here to provide you with a tool to view what is inside your database. NEVER use this tool to edit your database! Use rails migrations! Or you're gonna have a bad time :)


###Step 3 - create a new rails app

**New Rails4 app**

	$ rails _4.0.4_ new pgtestapp --database=postgresql
	
We'll do a little dirty scaffold to get our test app going.

	 $ rails generate scaffold Street name:string treetype:string
	 
edit **Database.yml**

```
development:
  adapter: postgresql
  encoding: unicode
  database: pgtestapp_development
  pool: 5
  username: rails
  password: rails
```

then at your command prompt...

	rake db:create
	rake db:migrate
	
now open your app in chrome

	localhost:3000/street

You should see a working app with models! Enter in a few values.
	 
	NOTE: Don't forget to create a root page. Make sure you edit the routes.rb page and get your app pointing it's root to it!!
	
##YOU'RE DONE! 


---
Compiled and edited by Alfonso Rush
