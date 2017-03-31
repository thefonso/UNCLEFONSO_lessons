# 1. Car
class Car
    attr_accessor :max_speed, :color, :seating_material

    def initialize(color="White", max_speed=100, options={})
        @color = color
        @max_speed = max_speed
        @seating_material = options{:seating_material} || "Plain"
    end

    def rev_engine
        puts "vrmm vvrmmmm"
    end
end


class Ferrari < Car
    attr_accessor :max_speed

    def initialize(color="Red")
        @max_speed = 211
        @color = color
        @seating_material = "Leather"
    end

    def rev_engine
        puts "VRMM VVVRRMMMM!!!!"
    end
end

class Taxi < Car
    def initialize()
        @color = "Yellow"
    end

    def honk
        puts "HONNNKKK!!!!"
    end
end


car_01 = Ferrari.new
car_02 = Ferrari.new('Pink')
car_03 = Taxi.new


car_01.rev_engine
car_02.rev_engine
car_03.rev_engine
car_03.honk
