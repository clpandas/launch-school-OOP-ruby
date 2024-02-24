module Towable 
  def can_tow?(pounds)
    pounds < 2000
  end
end

class Vehicle 
  attr_accessor :color
  attr_reader :year, :model
  
  @@number_of_vehicles = 0 
  
  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles."
  end 
  
  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end
  
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    @@number_of_vehicles += 1
  end
  
  def speed_up(number)
    @current_speed += number
    puts "You push the gas pedal and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end
  
  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_off
    @current_speed = 0
    puts "The car is now off."
  end
  
  def spray_paint(color)
    self.color = color
    puts "Your car is now the color #{color}."
  end
  
  def age
    "Your #{self.model} is #{years_old} years old."
  end

  private
  
  def years_old
    Time.now.year - self.year
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
  
  def to_s
    "My car is a #{color}, #{year}, #{model}."
  end
end

class MyTruck < Vehicle
  include Towable 
  
  NUMBER_OF_DOORS = 2
  
  def to_s
    "My truck is a #{color}, #{year}, #{model}."
  end
end 

my_car = MyCar.new(2007, 'red', 'hyundai accent')
puts my_car.age
