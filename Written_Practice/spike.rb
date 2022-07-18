# + Children, teachers, class assistants, principles,
# + janitors and cafeteria workers all have the 
# + ability to eat lunch.

# + Inside a preschool there are children, teachers, 
# + class assistants, a principle, janitors, and 
# + cafeteria workers. 

# +Both teachers and
# +assistants can help a student with 
# +schoolwork and watch them on the playground.


# + A teacher teaches 
# + assistant helps kids with any bathroom emergencies. 

# + Kids themselves can learn and play. 

# A teacher and principle can supervise a class. 

# + Only the principle has the ability to expel a kid.

# + Janitors have the ability to clean. 

# + Cafeteria workers have the ability to serve food.
class person
  def eat_lunch
  end
end

class Student < Person
  def learn
  end

  def play
  end
end

class ClassroomWorker < Person
  def help_with_schoolwork(student)
  end

  def watch_on_playground(students)
  end
end

class Teacher < ClassroomWorker
  def teach(students)
  end

  def supervise(students)
  end
end


class Assistant < ClassroomWorker
  def help_with_emergency(student)
  end
end

class Principle < Person
  def supervise(students)
  end

  def expel(student)
  end
end

class Janitor < Person
  def clean
  end
end


class CafeteriaWorker < Person
  def serve_food(person)
  end
end

