

# class Person
#   def initialize
#     @name = "Bob"
#     @age = 35
#   end

#   def initialize(name)
#     @name = name
#     @age = 35
#   end

#   def initialize(name, age)
#     @name = name
#     @age = age
#   end

#   def to_s
#     "#{@name}: #{@age} years old"
#   end
# end

# puts Person.new
# puts Person.new("Sam")
# puts Person.new("Sam", 12)



# class Person
#   def initialize(name='Bob', age=35)
#     @name = name
#     @age = age
#   end

#   def to_s
#     "#{@name}: #{@age} years old"
#   end
# end

# puts Person.new
# puts Person.new("Sam")
# puts Person.new("Sam", 12)

=begin
Method overloading: initialize method of 
subclass to require 3 parameters, normal 
invocation = SubClass.new(p1, p2, p3) , 
can SubClass.new() be called because Object 
superclass has a constructor that has zero parameters

=end


class Person
  def initialize; end

  def to_s
    "#{@name}: #{@age} years old"
  end
end

class Student < Person
  def initialize(name, age)
    @name = name
    @age = age
  end
end

p Student.new