# Title: Dogs App

### Type:
- Lab

### Summary
Learn to use active record to abstract SQL queries.

### Estimated Time:
- 2hrs

### Prerequisites:
- Sinatra
- SQL
- Databases

### Objectives:
- Integrate active record with sinatra app
- Object wrappers for database entries, model.
- Basic active record methods for CRUD

### Activity:
We will build an application to store dogs, breeds, and images in a database using Active Record

## How to lead the lesson
You should already know/have this app from the SQL module.  After introducing active record we will rewrite the app using Active record models instead


### Specification:

- The Dog model with name, breed, and image URL attributes
- App Routes:
  - Root
  - New
  - Edit
  - Delete
  - Find by breed

### Instructor Notes

```bash
$ createdb dogdb
$ psql -d dogdb -f dogs.sql
```

