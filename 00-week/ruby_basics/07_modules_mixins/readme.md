### Modules and Mixins 
 
 Modules are a way of grouping together methods, classes, and constants.
 Modules give you two major benefits.

 1. Modules provide a namespace and prevent name clashes.
 2. Modules implement allow you to mixin

  A namespace is a sandbox in which your methods and constants can play without having to worry
  about being stepped on by other methods and constants

  Syntax:
  
```
  module Identifier
  	CONSTANT = somevalue
   def method1
   	...
   end
   def method2
   ...
   end
  end
```

  Modules are named with an initial uppercase latter.<br/>
  Module methods are defined just like class methods.

As with class methods, you call a module method by preceding its name with the module's name and a period, and you reference a constant using the module name and two colons.

```
Identifier.method1

Identifier::CONSTANT
```

Consider the following

**support.rb**

```
module Week
   FIRST_DAY = "Sunday"
   def Week.weeks_in_month
      puts "You have four weeks in a month"
   end
   def Week.weeks_in_year
      puts "You have 52 weeks in a year"
   end
end
```

Now, you can include this module in a class as follows:

**05\_module\_example.rb**

```
require_relative "support"

class Decade
include Week
   no_of_yrs=10
   def no_of_months
      puts Week::FIRST_DAY
      number=10*12
      puts number
   end
end

d1=Decade.new
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year
d1.no_of_months
```

will produce the following

```
Sunday
You have four weeks in a month
You have 52 weeks in a year
Sunday
120
```

You can run this file on the cli as it is included in this directory.

This is the gist of modules and mixins now we can talk a bit more in your editor. 

Go ahead with 01-modules-introduction.rb
 
