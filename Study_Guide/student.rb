# class Student
#   attr_accessor :name, :grade

#   def initialize(name)
#     @name = name
#     @grade = nil
#   end

#   def change_grade(new_grade)
#     self.grade = new_grade
#   end
# end

# priya = Student.new("Priya")
# priya.change_grade('A')
# puts priya.grade # => "A"

# The last line in the above code should return "A". 
# Which method(s) can we add to the Student class so 
# the code works as expected?

#============================

class Student
  attr_accessor :grade

  def initialize(name, grade=nil)
    @name = name
    # instance variable grade is not initialized
    # inside the constrcutor
  end
end

ade = Student.new('Adewale')
p ade # => #<Student:0x00000002a88ef8 @grade=nil, @name="Adewale">
# Why does this code not have the expected return value?
