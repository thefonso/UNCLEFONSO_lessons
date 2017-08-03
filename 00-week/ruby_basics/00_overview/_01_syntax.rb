### Ruby Comments:
#
# A comment hides a line, part of a line, or several lines from the Ruby interpreter. 
# You can use the hash character (#) at the beginning of a line:

# I am a comment. Just ignore me.

# Or, a comment may be on the same line after a statement or expression:

name = "Unclefonso" # This is again comment

# Here is another form. This block comment conceals several lines from the interpreter with =begin/=end:
#
=begin
This is a comment.
This is a comment, too.
This is a comment, too.
I said that already.
=end



### How to create a basic ruby file:
#
# Let us write a simple program in ruby. All ruby files will have extension .rb.
# So, go to cli and put the following source code in a test.rb file.
#
# $ touch test.rb
#
# open the file in your editor and place the following in... 

puts "Hello, Ruby!";

# Now, try to run this program from the cli (terminal prompt) as follows:
# $ ruby test.rb

# the output should be
# >> Hello, Ruby!

# Now you have seen a simple Ruby program, now lets see few basic concepts related to Ruby Syntax:




### Whitespace in Ruby:
#
# Whitespace characters such as spaces and tabs are generally ignored in Ruby code, 
# except when they appear in strings. Sometimes, however, they are used to interpret ambiguous statements.
# Interpretations of this sort produce warnings when the -w option is enabled.
# example...

a + b is interpreted as a+b ( Here a is a local variable)
a  +b is interpreted as a(+b) ( Here a is a method call)




### Line Endings in Ruby:
#
# Ruby interprets semicolons and newline characters as the ending of a statement. 
# However, if Ruby encounters operators, such as +, -, or backslash at the end of a line, 
# they indicate the continuation of a statement.






