class Products::Domain::Product
  attr_reader :name, :unit_price, :is_featured, :currency
  # 第3章ではActiveRecordモデルを利用していたが、前提が大きく変わり対応が難しい箇所が出てきたため急遽作成した
  def initialize(name:, unit_price:, is_featured:, currency:)
    @name = name
    @unit_price = Products::Currency::Domain::Money.new(unit_price, currency)
    @is_featured = is_featured
    @currency = Products::Currency::Domain::Currency.new(currency)
  end

  # user IUserContext
  def apply_discount_for(user_context)
    preferred = user_context.is_in_role('vip')

    discount = preferred ? 0.95 : 1.00

    Products::Domain::DiscountedProduct.new(name, unit_price.amount * discount, currency.code)
  end

  def with_unit_price(new_amount)
    @unit_price = new_amount
    self
  end
end
