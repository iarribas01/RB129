#================================================
#================= Inheritance ==================

=begin
OOP design that allows programmers to model their
programs in a way that mimics real world relationships
=end


# rather than...
class Animal
end

class Fish
end

class Bird
end

class Dove
  # (will have to copy and paste all the behaviors
  # of Bird into Dove)
end

# inheritance allows us to...

class Animal
end

class Fish < Animal
end

class Bird < Animal
end

class Dove < Bird
end