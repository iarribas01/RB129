#================================================
#=== Encapsulation & Method Access Control ======

=begin 
allow us to hide data from public users
create a public interface, prevent sensitive
data from being tampered with

public - we can see where the student ranks
  in their class
protected - gpa is shared between students
  so we can determine who the valedictorian is
private - individual grades are not shared
  to the public
=end

class Student
  def initialize(name)
  end

  def rank
  end
  
  def english_grade=(grade)
    @english_grade = grade
  end

  # more subjects...

  protected
  # only 
  def gpa
  end

  private
  def english_grade
  end

  # more subjects...
end

