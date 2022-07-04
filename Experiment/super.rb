class Dog
  def play_fetch(toy1 = 'ball', toy2 = 'stuffed bear')
    puts "#{self} retrieved #{toy1} and #{toy2}!"
  end
end

class Shibe < Dog
  puts super

  def play_fetch(toy1, toy2, toy3)
    super()
    super
    # super("stick", "tennis ball")
    # super "stick"
  end

  def to_s
    "Mitzi"
  end
end

Shibe.new.play_fetch("stick", "tennis ball", "frisbee")
