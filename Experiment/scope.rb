# class Person
#   # def initialize(n)
#   #   @name = n
#   # end

#   def name
#     @name
#   end

#   # @name = 'Salamander'
#   # puts @name

#   # def get_name
#   #   @name                     # is the @name instance variable accessible here?
#   # end
# end

# p Person.new.name
# # bob = Person.new('bob')
# # sally = Person.new('sally')
# # puts bob.get_name                  # => "bob"
# # puts sally.get_name

# module Barkable
#   # BARK = 'Arf!'
# end

# class Animal
#   include Barkable
#   # BARK = 'Bow-wow!'

# end

# class Dog < Animal
#   # BARK = "Woof!"

#   def speak
#     puts BARK
#   end
# end

# class GermanShep < Dog
#   BARK = 'Ro!'
# end


# Dog.new.speak
# puts
# puts Dog.ancestors


class Dog

  def initialize
    @@num_dogs += 1
  end 

  def num_dogs
    @@num_dogs
  end
  
  @@num_dogs = 0
  
end

Dog.new
Dog.new

puts Dog.new.num_dogs