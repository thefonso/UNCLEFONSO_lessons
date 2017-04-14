# More Method examples. Add variable values for each argument and explore with "# =>"

#Calculate the area, taking two parameters: length and width
def area(length, width)
  length * width
end

#Calculate the volume, taking three parameters: length, width and height
def volume(length, width, height)
  length * width * height
end

volume 12, 40, 4 # => 1920

#Calculate the square of a number
def square(x)
  x * x
end

square 9 # => 81

#Calculate the cube of a number
def cube(x)
  x ** 3
end

cube 9 # => 729

#Methods are not just for math!
def name_tag_generator(first, last, gender, age)
  if gender == "f"
    if age <19
      puts "Miss #{first} #{last}"
    else
      puts "Ms #{first} #{last}"
    end
  else
    puts "Mr #{first} #{last}"
  end
end

name_tag_generator("uncle", "fonso", "m", 40) # => nil
# >> Mr uncle fonso
