class Product < ApplicationRecord
  # Product エンティティ

  # user IUserContext
  def apply_discount_for(user_context)
    preferred = user_context.is_in_role('vip')

    discount = preferred ? 0.95 : 1.00

    Products::Domain::DiscountedProduct.new(name, unit_price * discount)
  end
end
