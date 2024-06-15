class Products::Domain::IProductService
  def get_feature_products
    raise NotImplementedError, "You must implement the #{self.class} method get_feature_products"
  end
end
