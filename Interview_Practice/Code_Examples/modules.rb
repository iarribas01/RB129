#================================================
#=================== Modules ====================

=begin 
  collection of behaviors. Ruby's solution to 
  multiple inheritance
=end

module Flyable
  def fly 
  end
end

class Animal; end

class Fish < Animal; end

class Bird < Animal
  include fly
end




