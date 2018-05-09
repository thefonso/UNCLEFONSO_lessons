# Intro to Postgres

WHAT YOU WILL LEARN

- Students will be able to use postgres in a sinatra app
- open the postgres server command prompt
- install and use the pgadmin tool
- install postgres in a Sinatra app

## Installation:


### Step 1 - download the [postgresapp](http://postgresapp.com/)

control+click to install it in your applications folder

go to your terminal or iterm2 command line prompt and type...

	psql postgres
	
inside the postgres=# prompt type...

	CREATE EXTENSION "adminpack";
	
	CREATE ROLE sinatra WITH createdb login password 'sinatra';
	
then quit psql by typing...

	\q




### Step 2 - download and install [pgadmin3](http://www.pgadmin.org/download/macosx.php)

This is not necessary to make postgres work on your system. This is only here to provide you with a tool to view what is inside your database. NEVER use this tool to edit your database! Use migrations! Or you're gonna have a bad time :)


### Step 3 - create a new Sinatra app


gem install sinatra-activerecord

**New Sinatra app**

```
touch app.rb
touch Rakefile
```

Rakefile
```
require 'app'
reguire 'sinatra/activerecord/rake'
```

Note: rake -T (to see available task)

```
rake db:create_migration NAME=create_dogs
```

then at your command prompt...

	rake db:create_migration
	rake db:migrate
	
now open your app in chrome

	localhost:9292

You should see a working app with models! Enter in a few values.
	 
	
## YOU'RE DONE! 


---
Compiled and edited by Alfonso Rush
