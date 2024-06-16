class Products::Currency::Domain::ICurrencyConverter
  def exchange(money, target_currency)
    raise NotImplementedError
  end
end
