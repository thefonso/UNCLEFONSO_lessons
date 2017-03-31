# Ruby Lesson - Hash (20mins) - intro

# First let's have a chat...
# jot down any questions for the END of the slides / lessons
# 
# What are data structures?
# In computer science, a data structure is a particular way of storing and organizing data 
# in a computer so that it can be used efficiently. Different kinds of data structures are 
# suited to different kinds of applications, and some are highly specialized to specific tasks.
# 
# Arrays and Hashes are two primary data structures used in Ruby. 
# (others include: map, Struct, set, Matrix, Vector)
# 
# Today we’ll talk about the Hash...

 # What is a Hash?
 #   A hash is a type of data structure that lets you store things in a table of key / value pairs…like so
 # 
   hash = {
     key1 => value1,
     key2 => value2,
     key3 => value3
   }

# Why should you use this? Why should you care?
#   In an Array you would have to iterate through all of your data to find the element you are looking for. 
#   This takes time...
#   In a Hash, because you have a key value pair, Ruby knows how to go straight to it.
#   This makes retrieving your data MUCH FASTER.
#   Speed is your friend and speed is why you care :)

