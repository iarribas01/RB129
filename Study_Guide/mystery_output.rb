arr1 = [1, 2, 3]
arr2 = [1, 2, 3]
puts arr1.object_id == arr2.object_id      # => ?? # false

sym1 = :something
sym2 = :something
puts sym1.object_id == sym2.object_id      # => ?? # true

int1 = 5
int2 = 5
puts int1.object_id == int2.object_id      # => ?? #true
# What will the code above return and why?

=begin 
false, true, true

symbols and integers act differently that other objects.
While they are both still objects, these are immutable
objects that will contain the same object_id as another
of its type, so long as the values are the same.

=end
