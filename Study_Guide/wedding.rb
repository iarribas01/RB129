class Wedding
  attr_reader :guests, :flowers, :songs

  def prepare(preparers)
    preparers.each do |preparer|
      preparer.prepare_wedding(self)
    end
  end
end

class Chef
  def prepare_wedding(wedding)
    prepare_food(wedding.guests)
  end
  
  def prepare_food(guests)
    # implementation
  end
end

class Decorator
  def prepare_wedding(wedding)
    decorate_place(wedding.flowers)
  end

  def decorate_place(flowers)
    # implementation
  end
end

class Musician
  def prepare_wedding(wedding)
    prepare_performance(wedding.songs)
  end

  def prepare_performance(songs)
    #implementation
  end
end

# The above code would work, but it is problematic.
# What is wrong with this code, and how can you fix it?

=begin
We should implement duck typing. At the moment,
Wedding has to be aware of different types of classes available
and act accordingly. This is poor design, as it forces the user
of the Wedding class to know the implementation of
Chef, Decorator, and Musician. A better way to program this class
would be to create a common interface between all three where
they can respond to the same method name.

answer: too many dependencies. Wedding#prepare relies
on knowing the class names and the methods inside them.
Changing either will result in changes to the Wedding#prepare
method
=end

