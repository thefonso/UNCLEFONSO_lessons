#ActiveRecord & MVC

###Prereqs
- SQL
- Ruby
- Sinatra, templeting
- HTML

###What (Learning Objectives)
- Explain ORM
- Learn and use the common ORM methods provided by ActiveRecord
- Integrate ActiveRecord into a sinatra app
- Explain how rows map to objects, columns to methods
- Use foreign/primary keys with belongs_to/has_many to build nested associations
- Develop an intuition for ActiveRecord dynamic method name generation
- build an aplication using ActiveRecord instead of SQL

###How to teach this topic

#####Suggested ways to introduce the topic
- Query the same table of students used to teach SQL.
- Students should already be familiar with basic SQL so the best approach is to compare and contrast.  Most impressive is the consise and clear syntax, the downside is that you don't have as much low-level detail you do with SQL.
- Create a Sinatra App with one model that uses ActiveRecord for data storage
- Create a Sinatra App with multiple models and introduce ActiveRecord Associations. Reinforce the concept of MVC.

#####How to break it down
- Show that all the SQL operations become much easier and more intuitive
- Show that the ORM binding is not in real time, requires specific methods
- Demonstrate how previous SQL commands map to the common ActiveRecord methods
- Rewrite an existing sinatra app that does direct SQL queries to use ActiveRecord instead
- Introduce the new, save, create, update_attributes, delete methods
- Introduce the idea of nested relations and foreign/primary keys
- Create a nested relation using belongs_to, has_many
- Consider taking one of the concepts used to create a Rails app next week and create a version of it in Sinatra MVC this week

#####Potential questions, difficulties, and problems
- Student's don't have an intuition for when ActiveRecord actually sends out SQL to the database, very helpful to have the WEBrick server log running side by side with the app/console
- Confusion with all the options: ex `Person.new(name: "bob")` vs

```ruby
person = Person.new
person.name = "bob"
```
- nested associations syntax takes some time to sink in

###Why ActiveRecord?
- ActiveRecord is the last missing piece in building up a proper MVC application.  It makes all the SQL operations much simpler and much more intuitive.  The fact that we're using ruby objects makes data manipulation even more expressive.