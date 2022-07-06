class Dessert
  @@is_sweet = true

	def self.is_sweet?
		@@is_sweet
	end
end

class Cookie < Dessert; end

class DarkChocolate < Dessert
	@@is_sweet = false
end

puts Dessert.is_sweet?
puts Cookie.is_sweet?
puts DarkChocolate.is_sweet?
puts Cookie.is_sweet?