class Dessert
  def initialize(name, flavor)
    @name = name
    @flavor = flavor
  end

  def flavor=(flavor)
    @flavor = flavor + " and sour"
  end

  def flavor
    @flavor
  end
end


pan_au_choc = Dessert.new("Pan au chocolat", "Chocolatey and buttery")
p pan_au_choc.flavor
p (pan_au_choc.flavor = "Peanut buttery")
p pan_au_choc.flavor

