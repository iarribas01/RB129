class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end
  
  def rename(new_name)
    self.name = new_name
  end
end

kitty = Cat.new('Sophie')
p kitty.name # "Sophie"
kitty.rename('Chloe')
p kitty.name # "Chloe"
# What is wrong with the code above? Why? What principle about getter/setter methods does this demonstrate?

# In the imethod `rename`, we need to prepend `self` to `name` on line 9, otherwise Ruby assumes we’re initializing a new local variable `name` and assigning it to the argument passed in through the parameter `name`. 
