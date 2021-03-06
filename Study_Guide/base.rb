class Base

  def initialize
      @name = "Base"
  end

  private

   def private_method
       puts "private method called"
   end

  protected

   def protected_method
       puts "protected_method called"
   end

  public

   def get_name
       return @name
   end
end


class Derived < Base
  def public_method
      private_method
      protected_method
  end

  def public_method_with_other(other)
    # other.private_method
    other.protected_method
  end
end

d = Derived.new
d.public_method
puts d.get_name
d.public_method_with_other(Derived.new)