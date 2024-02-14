module Swimmable 
  def swim
    "I'm swimming"
  end
end

module Meowable
  def meow
    "Meow meow"
  end
end

class Animal; end 

class Fish < Animal
  include Swimmable
end

class Mammal < Animal
end

class Cat < Mammal
  include Meowable
end

class Dog < Mammal
  include Swimmable
end 

sparky = Dog.new
nemo = Fish.new
paws = Cat.new 

p sparky.swim
p nemo.swim

p paws.meow
p paws.swim
