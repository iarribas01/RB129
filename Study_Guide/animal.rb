class Animal
  def initialize(name)
    @name = name
  end
end

class Dog < Animal
  def initialize(name); end

  def dog_name
    "bark! bark! #{@name} bark! bark!"    
  end
end

teddy = Dog.new("Teddy")
puts teddy.dog_name                       # => ??"bark! bark!  bark! bark!"  
# What will this return, and why?

=begin 
We expect to see Teddy's name printed in
the middle of the output, but instead, the
name is not printed at all. This is because
the instance variable name's value is stored as nil. 
This happened because on line 15, we are initializing
a new Dog object which invokes the initialize method
in the Dog class on line 8. We've found an initialize
method that matches the number of arguments given.
However, the constructor doesn't do anything with
the argument provided, so the instance variable
is never initialized in the end.
=end
