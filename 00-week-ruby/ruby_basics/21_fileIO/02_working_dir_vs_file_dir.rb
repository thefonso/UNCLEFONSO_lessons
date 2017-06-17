# The working directory is the directory you're in when you invoke
# the Ruby program. Use Dir.pwd (print working directory) to find it.
puts "Your working directory is #{Dir.pwd}"


# The file's dir, however, is where the file is stored in. Every
# file has a variable it can access called __FILE__ which tells
# it where it is located. You can get the file's directory
# with File.dirname(__FILE__). The "." means "current dir",
# in other words, the file is located in the same dir as we are.
# The ".." means the parent dir, the one containing the
# current dir.
puts "This script is located in #{File.dirname __FILE__}"


# Try going to different directories and running this script:
#
# $ ruby 02_working_dir_vs_file_dir.rb
