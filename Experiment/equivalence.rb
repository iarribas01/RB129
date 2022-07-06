# str1 = 'something'
# str2 = 'something'
# puts str1 == str2
# puts str1.object_id == str2.object_id
# puts str1.eql? str2
# puts str1.equal? str2

# int1 = 1
# int2 = 1
# puts int1 == int2
# puts int1.object_id == int2.object_id
# puts int1.eql? int2
# puts int1.equal? int2

# sym1 = :something
# sym2 = :something
# puts sym1 == sym2
# puts sym1.object_id == sym2.object_id
# puts sym1.eql? sym2
# puts sym1.equal? sym2

# arr1 = [1, 2, 3]
# arr2 = [1, 2, 3]
# puts arr1 == arr2
# puts arr1.object_id == arr2.object_id
# puts arr1.eql? arr2
# puts arr1.equal? arr2

# hash1 = {:something => 1, :something_else => 2}
# hash2 = {:something => 1, :something_else => 2}
# puts hash1 == hash2
# puts hash1.object_id == hash2.object_id

# class MyObject; end

# obj1 = MyObject.new
# obj2 = MyObject.new
# puts obj1 == obj2
# puts obj1.object_id == obj2.object_id

class Cat ; end
class Dog ; end

puts Dog.new == Dog.new