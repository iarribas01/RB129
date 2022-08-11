class BenjaminButton 
  def initialize
    @actual_age = 0
    @appearance_age = 100
  end

  def actual_age
    @actual_age
  end

  def actual_age=(actual_age)
    @actual_age = actual_age
  end
  
  def appearance_age
    @appearance_age
  end

  def get_older
    @actual_age += 1
    @appearance_age -= 1
  end
  
  def look_younger
  end
  
  def die
    @actual_age = 100
    @appearance_age = 0
  end
end

benjamin = BenjaminButton.new
p benjamin.actual_age # => 0
p benjamin.appearance_age # => 100

benjamin.actual_age = 1
p benjamin.actual_age

benjamin.get_older
p benjamin.actual_age # => 2
p benjamin.appearance_age # => 99

benjamin.die
p benjamin.actual_age # => 100
p benjamin.appearance_age # => 0