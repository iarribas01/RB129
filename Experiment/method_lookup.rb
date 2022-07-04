module Consumable; end

class Fruit; end

module Peelable
  include Consumable

  class Banana < Fruit; end
  class Apple < Fruit; end
end



# puts Peelable::Banana.ancestors
puts Peelable::Banana.ancestors
# puts Peelable.ancestors