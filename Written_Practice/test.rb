# instance methods - work on object level?
  # Assumption: has access to all (class method, class vars, inst vars...)
# class methods - work on class level?
  # Assumption: only has access to class things (class method, class vars)


  # Assumption: Modules can access instance vars from a class, so long as it exists.

module Swimmable
  def swim 
    puts "#{@name} is swimming!"
    puts "I'm #{@age} years old!"
  end
end

class Dog
  include Swimmable
  @@total_dogs = 0

  def initialize(name)
    @name = name
    @@total_dogs += 1
  end
  
  def self.total_dogs
    @@total_dogs
  end

  def eat
    puts "#{@name}: \"I'm eating!\""
    # puts @@total_dogs # instance methods have access to class variables
    # puts self.class.total_dogs # instance methods have access to class methods
  end
end

puts Dog.total_dogs
fido = Dog.new("Fido")

# fido.eat
fido.swim