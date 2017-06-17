###Prereqs
- none

###What (Learning Objectives)
- Anatomy of a database (table, row, column, index, etc.)
- Basic understanding that column data types exist and are different
- Develop a level of proficiency with postgres
- Data manipulation (SELECT, INSERT etc.)
- Data definition (CREATE TABLE, ADD COLUMN, etc.)
- Aggregation functions (COUNT, AVG, etc.)
- Use SQL scripts to load/manipulate data

###How to teach this topic

#####Suggested ways to introduce the topic
- Introduce the idea of a database, the database server, and a language used to communicate with the database server
- Prepopulate a database with some student names and attributes to demo the different SQL commands

#####How to break it down
- Describe or diagram tables, entries/rows, columns, index
- Describe column data types and why they're different.
- Intro postgres and the postgres console
- Review basic SQL syntax and commands
- Introduce SQL scripts for loading/manipulating data

#####Potential questions, difficulties, and problems
- The SQL syntax is not intuitive for a lot people, esp problematic when students don't ask
- postgres can be a hard thing to learn, needs a lot of patience and debugging
- The use of quotes will hold up a lot of students at this point, moreso when we start concatinating in Ruby:

    sql_command = "SELECT * FROM #{table_name} WHERE name = \'#{user.name}\'"



###Why SQL?

- Databases have become the most practical places to store most of the data used in modern web apps
- SQL is the language used in communicating with most databases: MySQL, PostgreSQL, etc.


###
- [a-visual-explanation-of-sql-joins](https://blog.codinghorror.com/a-visual-explanation-of-sql-joins/)
