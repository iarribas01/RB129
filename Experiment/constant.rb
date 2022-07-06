# Is it possible to reference a constant defined in a different class? yes
class Cat
  CAT_SPEAK = 'Meow'.freeze
end

class Dog
  DOG_SPEAK = "Arf".freeze

  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
  end

  def self.chat_with_cat
    puts "I say #{DOG_SPEAK}, my friend says #{Cat::CAT_SPEAK}."
  end
end

# fido = Dog.new("Fido", "Jack russell", "2")

puts Dog.chat_with_cat
# puts fido::DOG_SPEAK