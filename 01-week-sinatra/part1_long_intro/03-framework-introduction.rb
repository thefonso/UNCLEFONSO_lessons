# The server deals with all the internet stuff, and rack gives
# our applications a consistent and simple interface to the server,
# our applications just have to figure out what they want to do with 
# the data.

# But this isn't very much infrastructure, I have to still do all
# the work of parsing that big hash table and figuring out what it
# means for my application.

# To make this simpler, we use frameworks. Frameworks give us tools
# (in the form of gems) that we can use to do things with our data.
# They give us an interface so we can think about the stuff that
# matters in a way that seems natural to us.

# Ruby on Rails is the most popular Ruby framework, it goes so far
# as to specify how your applications should be laid out, what
# abstractions you should use, how you should name your classes and
# variables.

# Sinatra is a much much simpler framework, it really gives you a
# minimal interface to match incoming requests and return a response.
# It also handles all the templating for you (taking data and
# making a web page out of it). 


