module Describable
  def color
    @color = nil
  end
end

class Banana
  include Describable
  # attr_reader :name

  def initialize
    @name = 'banana'
    @color
  end
end

banana = Banana.new
p banana.instance_variables
p banana
banana.color
p banana.instance_variables
p banana
# p Banana.new.instance_variables