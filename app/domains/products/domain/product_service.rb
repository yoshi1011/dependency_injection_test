class Products::Domain::ProductService < Products::Domain::IProductService
  def initialize(repository, user_context)
    if repository.nil?
      raise ArgumentError.new("repository is required")
    end

    if user_context.nil?
      raise ArgumentError.new("user_context is required")
    end

    @repository = repository
    @user_context = user_context
  end

  def get_feature_products
    featured_products = @repository.get_featured_products

    featured_products.map { |product| product.apply_discount_for(@user_context) }
  end
end
