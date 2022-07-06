# are class variables accessible to sub classes

class Dessert
  @@is_sweet = true

  def is_sweet?
    @@is_sweet
  end

  def self.is_sweet?
    @@is_sweet
  end
end


class Cookie < Dessert
  
end

class ChocolateChipCookie < Cookie

end

puts Cookie.new.is_sweet?
puts Cookie.is_sweet?
puts ChocolateChipCookie.is_sweet?