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

