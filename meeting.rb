# — What will the last 2 lines of code output?

class Foo
  def self.method_a
    "Justice" + all
  end

  def self.method_b(other)
    "Justice" + other.exclamate
  end

  private

  def all
    " for no one"
  end

  # def self.all
  #   " for all"
  # end

  def self.exclamate
    all + "!!!"
  end
end

foo = Foo.new
puts Foo.method_a # Justice for all # for no one ?

# self > object method is being called on

# puts Foo.method_b(Foo) # Justice for all!!!

