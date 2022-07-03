class Dog
  @@num_dogs = 0

  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
    @@num_dogs += 1
  end

  def self.method
    puts "class method called!"
  end

  def method
    puts "instance method called!"
  end

  def self.mystery_method
    self.method
  end

  def mystery_method
    self.method
  end
end

fido = Dog.new("Fido", "Jack russell", "2")


fido.mystery_method
Dog.mystery_method

# p Dog.what_am_i_class
# p fido.what_am_i_instance