class Parent
  def sai_hi
    p "Hi. From Parent."
  end
end

p Parent.superclass 

class Child < Parent
  def say_hi
    p "Hi. From Child."
  end
end

child = Child.new
child.say_hi