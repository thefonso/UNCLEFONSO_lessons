### Title: Dog Demo

### Type:
- Walkthrough/Codealong



### Prerequisites:

- HTML
- CSS
- Sinatra
- SQL

### Objectives:
- Create a Sinatra app that will store dog records in a database.
- Learn basic CRUD SQL statements


## Description

- Create a `dogdb` database
- Run the `dogs.sql` script
- Create the app and add "create" functionality
- Add "delete" and "edit" functionality

## Create DB

```bash

$ createdb dogdb 
$ psql -d dogdb -f dogs.sql
```

### Issues

- may require `gem install sinatra-contrib`

