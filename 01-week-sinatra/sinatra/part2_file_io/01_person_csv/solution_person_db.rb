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

f.close # Always remember to close your file!

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

# Create an array of people objects from the data
f.each do |line|
  person_array = line.chomp.split(', ')
  person = Person.new(person_array[0], person_array[1], person_array[2])
  people << person
end

f.close

people.each do |person|
  puts "The person is : #{person}"
end
