class Person
  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end
  
  def to_s
    "#{name}, #{age}"
  end
end

class Team
  attr_accessor :name, :members

  def initialize(name)
    @name = name
    @members = []
  end

  def <<(person)
    members.push person
  end

  def +(other_team) # returns an array, not Team object
    temp = Team.new(nil)
    temp.members = members + other_team.members
    temp
  end
end

# we'll use the same Person class from earlier

cowboys = Team.new("Dallas Cowboys")
cowboys << Person.new("Troy Aikman", 48)

niners = Team.new("San Francisco 49ers")
niners << Person.new("Joe Montana", 59)
dream_team = cowboys + niners               # what is dream_team?
p dream_team
# What does the Team#+ method currently return? What is the problem with this? How could you fix this problem?
