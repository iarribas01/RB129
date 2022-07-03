# getter / setter methods of class variables MUST be prepended with self

class MyClass
  attr_reader :var
  @@var = "potatoes!"

  def initialize
    @var = "hiya"
  end

  # def my_class_variable
  #   @@my_class_variable
  # end

  # def self.my_class_variable
  #   @@my_class_variable
  # end
end

# p MyClass.my_class_variable
p MyClass.new.var