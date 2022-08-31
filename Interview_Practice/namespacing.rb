# why is namespacing necessary for larger programs?



# when you include a module, there is a potential to have name conflict

# module Plantable 
#   def plant 
#     puts "#{self} has planted a #{@plant}!"
#   end

# end


# class Botanist
#   include Plantable
#   attr_reader :name

#   def initialize(name, plant)
#     @name = name
#     @plant = plant
#   end

#   def to_s
#     "#{name} the #{self.class}"
#   end

#   def plant
#     puts "#{self} has planted a flower!"
#   end
# end

# ciaran = Botanist.new("Ciaran", "Venus Fly Trap")
# puts ciaran
# ciaran.plant

module EcoProfession
  class Farmer
    def initialize(name, plant)
      @name = name
      @plant = plant
    end

    def to_s
      "#{name} the #{self.class}"
    end

    def plant
      puts "#{self} has planted a flower!"
    end
  end

  class Botanist
    include Plantable
    attr_reader :name

    def initialize(name, plant)
      @name = name
      @plant = plant
    end

    def to_s
      "#{name} the #{self.class}"
    end

    def plant
      puts "#{self} has planted a flower!"
    end
  end

end


module Plantable 
  def plant 
    puts "#{self} has planted a #{@plant}!"
  end
end




ciaran = Botanist.new("Ciaran", "Venus Fly Trap")
puts ciaran
ciaran.plant