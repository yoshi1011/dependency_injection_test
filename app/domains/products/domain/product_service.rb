class Products::Domain::ProductService < Products::Domain::IProductService
  def initialize(repository, user_context, converter)
    if repository.nil?
      raise ArgumentError.new("repository is required")
    end

    if user_context.nil?
      raise ArgumentError.new("user_context is required")
    end

    if converter.nil?
      raise ArgumentError.new("converter is required")
    end

    @repository = repository
    @user_context = user_context
    @converter = converter
  end

  def get_feature_products
    user_currency = @user_context.currency

    products = @repository.get_featured_products

    products.map do |product|
      unit_price = product.unit_price
      amount = @converter.exchange(unit_price, user_currency)
      product.with_unit_price(amount).apply_discount_for(@user_context)
    end
  end
end
