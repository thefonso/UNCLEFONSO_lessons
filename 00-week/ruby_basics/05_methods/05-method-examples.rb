# More Method examples. add variable values for each argument and explore with "# =>"

#Calculate the area, taking two parameters: length and width
def area(length, width)
  length * width
end

#Calculate the volume, taking three parameters: length, width and height
def volume(length, width, height)
  length * width * height
end

#Calculate the square of a number
def square(x)
  x * x
end

#Calculate the cube of a number
def cube(x)
  x ** 3
end

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