# testing how to use == vs ===

=begin 
Something interesting happens!

case will not always look for === method. 

  Case will use == custom method if defined
  Will also use === custom method if defined

  if both custom defined, case will look for === method first
=end



# class Dog
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   def ==(other)
#     puts "== was run!"
#     name == other.name
#   end

#   def ===(other)
#     puts "=== was run!"
#     name == other.name
#   end
# end

# fido = Dog.new("fido")
# piper = Dog.new("Piper")
# piper2 = Dog.new("Piper")


# puts fido == piper # calls custom ==, false
# puts piper == piper2 # calls custom ==, true
# puts fido === piper # custom ===, false
# puts piper === piper2 # custom ===, true

# case piper
# when fido
#   puts "Fido!"
# when piper2
#   puts "Piper!"
# else
#   puts "none"
# end

class A
  @@class_var = "this belongs in A"

  def self.class_var
    @@class_var
  end
end

class B < A 
  @@class_var = "this belongs in B"
end

class C < B  
  
  
end

puts A.class_var
puts B.class_var
puts C.class_var