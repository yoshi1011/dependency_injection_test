class Products::Currency::Domain::Money
  attr_reader :amount, :currency

  def initialize(amount, currency)
    if currency.nil?
      raise ArgumentError, 'Currency cannot be nil'
    end

    @amount = amount
    @currency = currency
  end
end
