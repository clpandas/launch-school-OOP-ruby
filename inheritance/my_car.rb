class Vehicle 
  attr_accessor :color
  attr_reader :year, :model
  
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
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
  
  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end
end

class MyCar < Vehicle
  def to_s
    "My car is a #{color}, #{year}, #{model}."
  end
  
  NUMBER_OF_DOORS = 4
  
end

class MyTruck < Vehicle
  def to_s
    "My truck is a #{color}, #{year}, #{model}."
  end
  
  NUMBER_OF_DOORS = 2

end 

my_car = MyCar.new("2007", "red", "Hyundai Accent")
puts my_car
my_truck = MyTruck.new("2010", "Silver", "Toyota Tacoma")
puts my_truck

