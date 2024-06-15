class Products::Infra::IProductRepository
  def get_featured_products
    # Productエンティティを返したい
    raise NotImplementedError, "You must implement the #{self.class} method get_featured_products"
  end
end
