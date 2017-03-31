# 1. Superhero
class Human
    attr_accessor :name, :age, :gender

    def initialize(name, age, gender)
        @name = name
        @age = age
        @gender = gender
    end

    def speak
        puts "Hi.  I'm #{@name}... a #{age} year old #{gender}"
    end

end

module Superhero
    def speak
        puts "I am #{@name}!  A Superhero!"
    end

    def fly
        puts "I am flying!!"
    end

    def save_people
        puts "I just saved #{rand(100)} people!  no big deal..."
    end
end


person_01 = Human.new("Lauren", 95, 'Female')
person_02 = Human.new("Kristen", 96, 'Female')
person_03 = Human.new("Phil", 93, 'Male')

person_02.extend(Superhero)

person_01.speak
person_02.speak
person_03.speak

person_02.fly

person_02.save_people
person_02.save_people
person_02.save_people

