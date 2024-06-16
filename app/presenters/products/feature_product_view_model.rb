class Products::FeatureProductViewModel
  # FeatureProductViewModelの配列を扱うFeatureProductsViewModelはメリットを感じなかったので未実装
  # name, unit_priceをそれぞれ渡す形式にしたかったが、Controller側がProductの中身を知りすぎてしまうので今の構造に。
  # ただ、これだとViewModelのテストを書く際にProductのレコード or モックが必要になる。やはりViewModelなんていらn...
  def initialize(product)
    @name = product.name
    @unit_price = product.unit_price
    @currency = product.currency
  end

  def summary_text
    unit_name = @currency == 'JPY' ? '¥' : '$'
    "#{@name} (#{unit_name}#{@unit_price})"
  end
end
