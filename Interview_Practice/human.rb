# Problem received from Raul Romero
class Human 
  attr_reader :name

  def initialize(name="Dylan")
    @name = name
  end

  def hair_colour(colour)
    "Hi, my name is #{name} and I have #{colour} hair."
  end
  
  def self.hair_colour(colour)
    "Hi, my name is Dylan and I have blonde hair."
    # if colour.empty?
    #   "Hi, my name is Dylan and I have blonde hair."
    # else
    #   # implementation not specified
    # end
  end
end

puts Human.new("Jo").hair_colour("blonde")  
# Should output "Hi, my name is Jo and I have blonde hair."

puts Human.hair_colour("")              
# Should "Hi, my name is Dylan and I have blonde hair."


#########

# mistake: forgot to check first who the caller is