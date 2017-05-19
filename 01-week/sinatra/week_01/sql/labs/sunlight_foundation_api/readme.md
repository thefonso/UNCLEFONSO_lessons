# Sunlight App
# Type: Lab

###Summary
Students create a single page app that quieries the Sunlight API to display
legislators and save their information to a database

## Esitmated Time
2 to 3 Hours

# Prerequisites
- Ruby
- HTML
- CSS
- Postgres
- Rake tasks
- ActiveRecord
- APIs
- Environmental Variables

###Objectives:
This lab provides practice in working through an API, dealing with routes and
params, persisting data, and conditional styling.

## How to lead the lesson
Walk students through signing up for an API key.  The starter code can be used as a code along to get students going.Then demonstrate querying the data from irb or pry before moving on to the requirements.

### Requirements
When we visit the homepage
We should see
  a **search box** to search the Sunlight API for Legislators by **zipcode**.
  a list of favorited legislators firstname and lastname, party, phone, state, twitter_id, and a votesmart_id

When we search for legislators and we display the search results
We should see
  * Republican legislators text in **red**
  * Democratic legislators text in **blue**
  * Independents text in **purple**
Each search result should include a **button** labeled 'favorite'
When we click 'Favorite'
  * It performs another Sunlight API query to get the specific legislator's data
  * It stores the Legislator's firstname and lastname, party, phone, state, twitter_id, and a bioguide_id in the **database**

**Extra**

* Display recent tweets for favorited legislators
* Add additional Search features to search by name, state
* Further CSS styling

_Readings and Resources_

* [The Sunlight Foundation](http://sunlightfoundation.com/)
* [Sunlight API Documentation on Legislators](http://sunlightlabs.github.io/congress/legislators.html)
* [The Sunlight Gem on Github](https://github.com/sunlightlabs/ruby-sunlight)
* [Sinatra ActiveRecord Gem](https://github.com/bmizerany/sinatra-activerecord)
* [ActiveRecord Query Interface](http://guides.rubyonrails.org/active_record_querying.html)
* [Sinatra Documentation](http://www.sinatrarb.com/documentation.html)
* [HTML Form Tag](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form)
* [HTML Input Tag](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Input)

##### Useful Sunlight API Commands

Search by Zipcode

```ruby
congresspeople = Sunlight::Legislator.all_in_zipcode('11222')
```

Find by Attributes

```ruby
congressperson = Sunlight::Legislator.all_where(:firstname => "Joe", :gender => "M")
```

### Instructor Notes

###Post-mortem:
- What worked?
- Student misunderstandings?
