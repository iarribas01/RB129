# Given the below usage of the Person class, code the class definition.

class Person
  attr_accessor :first_name, :last_name

  def initialize(name)
    self.name = name
  end

  def parse(name)
    return name.split if name.split.length == 2
    [name, '']
  end

  def name
    last_name.empty? ? first_name : first_name + ' ' + last_name
  end

  def name=(name)
    @first_name, @last_name = parse(name)
  end

  def ==(other)
    name == other.name
  end

  def to_s
    name
  end
end

# bob = Person.new('bob')
# puts bob.name                  # => 'bob'
# bob.name = 'Robert'
# puts bob.name                  # => 'Robert'


#=================================================

# Modify the class definition from above to facilitate 
# the following methods. Note that there is no name= setter
#  method now.

# bob = Person.new('Robert')
# puts bob.name                  # => 'Robert'
# puts bob.first_name            # => 'Robert'
# p bob.last_name             # => ''
# bob.last_name = 'Smith'
# puts bob.name                  # => 'Robert Smith'

# Hint: let first_name and last_name be "states" and 
# create an instance method called name that uses those 
# states.


#=================================================

# Now create a smart name= method that can take 
# just a first name or a full name, and knows
#  how to set the first_name and last_name
#   appropriately.

# bob = Person.new('Robert')
# puts bob.name                  # => 'Robert'
# puts bob.first_name            # => 'Robert'
# puts bob.last_name             # => ''
# bob.last_name = 'Smith'
# puts bob.name                  # => 'Robert Smith'

# bob.name = "John Adams"
# puts bob.first_name            # => 'John'
# puts bob.last_name             # => 'Adams'


#=================================================

# Using the class definition from 
# step #3, let's create a few more 
# people -- that is, Person objects.

# bob = Person.new('Robert Smith')
# rob = Person.new('Robert Smith')

# puts rob.name == bob.name
# puts rob == bob

# If we're trying to determine whether the
#  two objects contain the same name, 
#  how can we compare the two objects?


#=================================================

# Continuing with our Person class 
# definition, what does the below print out?

# bob = Person.new("Robert Smith")
# puts "The person's name is: #{bob}" # The person's name is: #<Person:09kjasdkjah>

#=================================================

# Now, what does the below output?

bob = Person.new("Robert Smith")
puts "The person's name is: #{bob}" # The person's name is: Robert Smith

