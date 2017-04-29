### Directories in Ruby:

# All files are contained within various directories, and Ruby has no problem handling these too. Whereas the File class handles files, 
# directories are handled with the Dir class.

### Navigating Through Directories:
# To change directory within a Ruby program, use Dir.chdir as follows. This example changes the current directory to /usr/bin.

Dir.chdir("/usr/bin")

# You can find out what the current directory is with Dir.pwd:
puts Dir.pwd # This will return something like /usr/bin

# You can get a list of the files and directories within a specific directory using Dir.entries:
puts Dir.entries("/usr/bin").join(' ')

# Dir.entries returns an array with all the entries within the specified directory. Dir.foreach provides the same feature:
Dir.foreach("/usr/bin") do |entry|
   puts entry
end

# An even more concise way of getting directory listings is by using Dir's class array method:
Dir["/usr/bin/*"]

### Creating a Directory:
# The Dir.mkdir can be used to create directories:
Dir.mkdir("mynewdir")

# You can also set permissions on a new directory (not one that already exists) with mkdir:
# NOTE: The mask 755 sets permissions owner, group, world [anyone] to rwxr-xr-x where r = read, w = write, and x = execute.
Dir.mkdir( "mynewdir", 755 )

### Deleting a Directory:

# The Dir.delete can be used to delete a directory. The Dir.unlink and Dir.rmdir perform exactly the same function and are provided for convenience.

Dir.delete("testdir")

### Creating Files & Temporary Directories:

# Temporary files are those that might be created briefly during a program's execution but aren't a permanent store of information.

# Dir.tmpdir provides the path to the temporary directory on the current system, although the method is not available by default. 
# To make Dir.tmpdir available it's necessary to use require 'tmpdir'.

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
