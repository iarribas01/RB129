# class Person
#   attr_writer :first_name, :last_name

#   def full_name
#     # omitted code
#     @first_name + ' ' + @last_name 
#   end
# end

# mike = Person.new
# mike.first_name = 'Michael'
# mike.last_name = 'Garcia'
# puts mike.full_name # => 'Michael Garcia'

# # What code snippet can replace the "omitted code" comment to produce the indicated result? 


#==================================================

# class Person
#   def initialize(name)
#     @name = name
#   end
# end

# class Cat
#   def initialize(name, owner)
#     @name = name
#     @owner = owner
#   end
# end

# sara = Person.new("Sara")
# fluffy = Cat.new("Fluffy", sara)
# # Identify all custom defined objects that act as collaborator objects within the code.

# # Person objects act as a collaborator for Cat objects
# # Sara, a Person object, is a collaborator of Cat



#==================================================

# class Person
#   def get_name
#     @name                     # the @name instance variable is not initialized anywhere
#   end
# end

# bob = Person.new
# bob.get_name                  # => ?? nil
# # What is the return value, and why?

# Objects return nil when trying to access
# instance variables that are not initialized yet
# instance variables are accessibly at object level, even if not initialized.



#==================================================

class Person
  include Comparable
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def <=>(other)
    age <=> other.age
  end
end

bob = Person.new("Bob", 49)
kim = Person.new("Kim", 33)
puts "bob is older than kim" if bob > kim
# How can you make this code function? How is this possible?

