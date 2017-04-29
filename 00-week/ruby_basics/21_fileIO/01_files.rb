# docs: http://ruby-doc.org/core-2.1.2/File.html
#       http://www.ruby-doc.org/core-2.1.2/IO.html
#
#
# file output basically works the same way as regular output,
# because a File object is an IO object
# and $stdout and $stdin, are also IO objects.


# Note that by default, this all happens in the dir 
# *you're* in, not the dir that the *file* is in.


# Write to a file
File.open "names" , "w" do |file|
  file.puts   "sally"
  file.puts   "sam"
  file.print  "billy"
  file.print  "bob"
  file.puts
end


# You can see it's in here.
files = Dir.glob('*')  # => ["01_&&_return_values.rb", "02_||_return_values.rb", "03_||=_return_values.rb", "04_introspection.rb", "05_ranges.rb", "06_files.rb", "18_optional_params.rb", "19_variable_length_params.rb", "20_Hash_params.rb", "21_Parameter_review.rb", "names"]
files.include? 'names' # => true


# Read the entire file at once
contents = File.read "names"
contents  # => "sally\nsam\nbillybob\n"


# Iterate over the lines of the file 
# useful if your file is really big.
File.foreach "names" do |line|
  line  # => "sally\n", "sam\n", "billybob\n"
end


# Read each line from the file into an array
File.readlines "names" # => ["sally\n", "sam\n", "billybob\n"]


# Cleaning up
File.exist? "names" # => true
File.delete "names"
File.exist? "names" # => false


### Creating Files & Temporary Directories: 
#
# Temporary files are those that might be created briefly during a program's execution 
# but aren't a permanent store of information.
#
# Dir.tmpdir provides the path to the temporary directory on the current system, 
# although the method is not available by default. 
# To make Dir.tmpdir available it's necessary to use require 'tmpdir'.
#
# You can use Dir.tmpdir with File.join to create a platform-independent temporary file:

require 'tmpdir'
   tempfilename = File.join(Dir.tmpdir, "tingtong")
   tempfile = File.new(tempfilename, "w")
   tempfile.puts "This is a temporary file"
   tempfile.close
   File.delete(tempfilename)

# This code creates a temporary file, writes data to it, and deletes it. 
# Ruby's standard library also includes a library called Tempfile that can create temporary files for you:

require 'tempfile'
   f = Tempfile.new('tingtong')
   f.puts "Hello"
   puts f.path
   f.close
