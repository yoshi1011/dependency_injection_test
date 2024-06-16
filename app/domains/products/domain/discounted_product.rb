class Products::Domain::DiscountedProduct
  attr_reader :name, :unit_price, :currency

  def initialize(name, unit_price, currency)
    @name = name
    @unit_price = unit_price
    @currency = currency
  end
end
