class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  
  def to_s
    puts "My name is #{name}."
  end
end

bob = Person.new("Steve")
bob.name = "Bob"

puts bob