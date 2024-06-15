class HomeController < ApplicationController
  def index
    repository = Products::Infra::ProductRepository.new
    # めんどくさいのでUser.firstで固定
    user_context = UserContextAdapter.new(User.first)

    product_service = Products::Domain::ProductService.new(repository, user_context)
    feature_products = product_service.get_feature_products

    @products = feature_products.map do |product|
      # 詰替えしかしていないのでActiveRecordのままでいい気しかしない
      # 表示に関する処理をActiveRecordモデルから分離できるのはメリットかもしれない
      # helperよりも管理しやすいかもしれない(知らない)
      Products::FeatureProductViewModel.new(product)
    end
  end
end
