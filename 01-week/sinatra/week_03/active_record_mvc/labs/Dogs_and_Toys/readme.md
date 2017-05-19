#Title: Dogs & Toys App

###Type:
- Lab

###Summary
Learn nested associations using ActiveRecord

###Estimated Time:
- 2hrs

###Prerequisites:
- Sinatra
- SQL
- Databases
- ActiveRecord

###Objectives:
- Foreign vs primary keys
- Use `belongs_to` and `has_many` to configure active record for nested associations

###Activity:
Students will create an app that tracks the dogs toys and uses nested associations provided by ActiveRecord

## How to lead the lesson
- Augment the `.sql` script to include a toy table with a `dog_id` foreign key
- Let the studetns add a Toy class for the model
- Let the students fill out the `has_many` and `belongs_to` sections of the model

###Specification:

Same as the dog app but with a new Toy model.  The toy model will have a `toy_type` attribute (ex: "plush", "plastic"" etc)

### Instructor Notes

###Post-mortem:
- What worked?
- Student misunderstandings?