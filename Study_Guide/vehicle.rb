# class Vehicle
#   @@wheels = 4

#   def self.wheels
#     @@wheels
#   end
# end

# puts Vehicle.wheels                              # => ?? 4

# class Motorcycle < Vehicle
#   @@wheels = 2
# end

# puts Motorcycle.wheels                           # => ?? 2
# puts Vehicle.wheels                              # => ?? 2

# class Car < Vehicle
# end

# Car.wheels                                  # => ?? 2
# What would the above code return, and why?

=begin
  The code returns 4 2 2
  because  Ruby is reading the program from top
  to bottom. After reading through the Vehicle class,
  the class variable wheels is initialized and set to the
  value 4, hence why 4 is output before we even reach the
  Motorcycle class. When Ruby reaches the Motorcycle class,
  Ruby inherits all the attributes and class variables from
  its parent (Vehicle). We now set the value of class variable 
  wheels to 2, which happens to be pointing to the same
  class variable that Vehicle is pointing to, and overwrites
  the original value that wheels was pointing to


=end

# will only search Maintenance and then topclass

module Wheelable
  WHEELS = 4
end
module Maintenance
  # WHEELS = 4
  include Wheelable
  def change_tires
    "Changing #{self.class::WHEELS} tires."
    # "Changing #{WHEELS} tires."
  end
end

# WHEELS = 4

class Vehicle
  WHEELS = 4
end

class Car < Vehicle
  WHEELS = 2
  include Maintenance
end

a_car = Car.new
puts a_car.change_tires             
puts Maintenance.ancestors
# Describe the error and provide two different ways to fix it.

