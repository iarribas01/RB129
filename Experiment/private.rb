=begin
private methods cannot be called
with self appended (cannot be 
called with a receiver), but 
protected methods can be called
with self
=end

class MyClass
  def my_method
    self.class.priv_class_method
  end

  private

  def self.priv_class_method
    puts "Can this happen? It's happening!"
  end
end

MyClass.new.my_method