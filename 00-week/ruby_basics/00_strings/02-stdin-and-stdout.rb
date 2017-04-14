# STRINGS: stdin and stdout
#
# Programs that run in a terminal read text in, and write text out. 
# This is the common interface that allows lots of different programs to interact with each other.

# When a program outputs text, we say it sends it to standard output (stdout) in the terminal
# Anything your program sends to stdout will display on your terminal.
# For example, the unix command 'cat' sends a file's contents to standard output.
#
# When it reads text in, it gets that text from standard input (stdin).
# In the terminal, stdin is hooked up to your keyboard.
# Whatever you type will be sent to your program's stdin.
#
# Use gets to read a line from stdin
# (hit return after you type your string)
user_response = gets

# Use puts to write the line to stdout
puts "You said: #{user_response}"



# INSTRUCTIONS
# go to the command line and run this file as "ruby 02-stdin-and-stdout.rb" without the quotes of course ^_^


