class Products::Domain::DiscountedProduct
  attr_reader :name, :unit_price

  def initialize(name, unit_price)
    @name = name
    @unit_price = unit_price
  end
end
