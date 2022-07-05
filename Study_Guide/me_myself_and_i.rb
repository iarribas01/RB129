=begin 
On which lines in the following code does 
self refer to the instance of the MeMyselfAndI 
class referenced by i rather than the class itself?
Select all that apply.
=end

class MeMyselfAndI
  puts self

  def self.me
    puts self
  end

  def myself
    self # the only line referencing i
  end
end

# i = MeMyselfAndI.new
MeMyselfAndI.me

