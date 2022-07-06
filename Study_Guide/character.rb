class Character
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    "#{name} is speaking."
  end
end

class Knight < Character
  def name
    "Sir " + super
  end
end

sir_gallant = Knight.new("Gallant")
puts sir_gallant.name # => "Sir Gallant"
puts sir_gallant.speak # => "Sir Gallant is speaking."
# What change(s) do you need to make to the above code in order to get the expected output?
