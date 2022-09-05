#================================================
#============= Encapsulation ===================

=begin
grouping together behaviors and attributes 
so that it works as a single unit
=end

#### rather than....

person_name = "Bob"
person_age = 30

def introduce(person_name, person_age)
  # ...
end

#### encapsulation allows us to....

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    # ...
  end
end
