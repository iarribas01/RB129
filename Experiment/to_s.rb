class Dog
  @@num_dogs = 0

  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
    @@num_dogs += 1
  end

  def to_s
    @name
  end

  def inspect
    @name.upcase
  end
end

fido = Dog.new("Fido", "Jack russell", "2")

puts fido
p fido
puts "#{fido}"