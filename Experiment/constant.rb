class Dog
  DOG_SPEAK = "Arf".freeze

  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
  end
end

fido = Dog.new("Fido", "Jack russell", "2")

puts Dog::DOG_SPEAK
puts fido::DOG_SPEAK