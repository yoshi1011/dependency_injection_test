class Products::Currency::Domain::CurrencyConverter < Products::Currency::Domain::ICurrencyConverter
  def initialize
    # なにもしない
  end

  def exchange(money, target_currency)
    return money if money.currency == target_currency.code

    # 通貨換算処理
    # このサンプルでは単純に1ドル=100円としている
    amount = money.amount
    amount = amount * 100 if money.currency == 'USD' && target_currency.code == 'JPY'
    amount = amount / 100 if money.currency == 'JPY' && target_currency.code == 'USD'
    Products::Currency::Domain::Money.new(amount, target_currency)
  end
end
