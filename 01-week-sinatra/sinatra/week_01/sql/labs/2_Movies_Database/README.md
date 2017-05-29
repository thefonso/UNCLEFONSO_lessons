###Title: Movies with Database [2]
###Type: lab/hw
###Time Require: 2 hrs

###Prerequisites
- HTML
- CSS
- Sinatra
- SQL

###Issues

- may require `gem install sinatra-contrib`
- `@hash` throws an error if any values contain a single quote, must be escaped: Line 25 of `main.rb`

```ruby
 sql = "insert into movies (title, year, rated, released, runtime, genre, director, writers, actors, plot, poster) values ('#{@hash['Title']}', '#{@hash['Year']}', '#{@hash['Rated']}', '#{@hash['Released']}', '#{@hash['Runtime']}', '#{@hash['Genre']}', '#{@hash['Director']}', '#{@hash['Writer']}', '#{@hash['Actors']}', '#{@hash['Plot']}', '#{@hash['Poster']}')"
```
###Objectives: What student should be able to do by end
* Create a Sinatra app that saves information to a database

###Original Source Attribution
n/a

###Additional Resources
n/a

###Post-mortem:
  - What worked
  - Student misunderstandings

###How to run this activity

* Discuss with students:
  * Why would you want to use a database with your app?

* Walk students through extending the Movies2 Lab to include a database
