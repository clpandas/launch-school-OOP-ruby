class MyCar
  
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
end

accent = MyCar.new(2007, 'red', 'hyundai accent')
accent.current_speed
accent.speed_up(20)
accent.current_speed
accent.speed_up(25)
accent.current_speed
accent.brake(15)
accent.current_speed
accent.shut_off
accent.current_speed