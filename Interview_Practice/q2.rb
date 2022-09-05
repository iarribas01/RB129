=begin 
Define a class of your choice with the following:

  + Constructor method that initializes 2 instance variables.
  + Instance method that outputs an interpolated string of those variables.
  + Getter methods for both (you can use the shorthand notation if you want).
  + Prevent instances from accessing these methods outside of the class.

  Finally, explain what concept(s) you’ve just demonstrated with your code.
=end

class Dog
  def initialize(name, breed)
    @name = name
    @breed = breed
  end

  def display_info
    puts "#{name} the #{breed}"
  end
  
  private
  attr_reader :name, :breed
end

fido = Dog.new("Fido", "Border Collie")

fido.display_info
puts fido.name
puts fido.breed