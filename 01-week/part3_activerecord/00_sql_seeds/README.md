#Title: Facebook Seeds

###Type: Codealong/Demo

###Summary:
A simple example of reading and writing from a postgres database.

###Prerequisites:
- Ruby
- Basic SQL

###Objectives:
Demonstrate connecting to, reading and writing from a database.

###Activity:

## Discription
This requires creating a facebook.db first and creating tables. You can also seed data with seeds.sql
This is a chance to familiarize yourself with seeding data, which we'll be doing with activerecord in rails.

```bash

$ createdb facebook
$ psql -d facebook -f facebook.sql
$ psql -d facebook -f seeds.sql
```


