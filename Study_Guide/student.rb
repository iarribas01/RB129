class Student
  attr_accessor :name, :grade

  def initialize(name)
    @name = name
    @grade = nil
  end

  def change_grade(new_grade)
    self.grade = new_grade
  end
end

priya = Student.new("Priya")
priya.change_grade('A')
puts priya.grade # => "A"

# The last line in the above code should return "A". 
# Which method(s) can we add to the Student class so 
# the code works as expected?

