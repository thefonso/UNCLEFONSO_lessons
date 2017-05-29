#Title: Facebook

###Type: Codealong/Demo

###Summary:
A simple example of reading and writing from a postgres database.

###Estimated Time:
1 hour

###Prerequisites:
- Ruby
- Basic SQL

###Objectives:
Demonstrate connecting to, reading and writing from a database.

###Activity:

## How to lead the lesson
This requires creating a facebook.db first and creating tables. You can also seed data with seeds.sql
This is a chance to familiarize students with seeding data, which they'll be doing with activerecord in rails.

```bash

$ createdb facebook
$ psql -d facebook -f facebook.sql
$ psql -d facebook -f seeds.sql
```

###Specification:

### Instructor Notes

###Post-mortem:
- What worked?
- Student misunderstandings?
