#  This will write to a the end of a file called database.txt if it exists,
#  otherwise it creates a new file for reading and writing
f = File.new('database.txt', 'a+') # `a+` Read-write

print "write info to file (y/n): "
response = gets.chomp.downcase

while response == 'y'
  print "Enter name, age, gender: "
  f.puts(gets.chomp)

  print "write info to file (y/n): "
  response = gets.chomp.downcase
end

# Always remember to close your file!
f.close

class Person
  attr_accessor :name, :age, :gender
  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end
  def to_s
    "#{@name} is a #{@age} year old #{@gender}."
  end
end

# Now let's read back from the file
f = File.new('database.txt', 'r') # `r` Read-only
people = []

# We can read from the file line by line
f.each do |line|
  # Each line is a comma separated list of values
  person_array = line.chomp.split(', ')
  # Create an array of people objects from the data
  person = Person.new(person_array[0], person_array[1], person_array[2])
  # Add each person to the people array
  people << person
end

# Always remember to close your file!
f.close

# Now print out all the people in our file
people.each do |person|
  puts "The person is : #{person}"
end
