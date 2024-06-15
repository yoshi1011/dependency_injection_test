class Products::FeatureProductViewModel
  # FeatureProductViewModelの配列を扱うFeatureProductsViewModelはメリットを感じなかったので未実装
  # name, unit_priceをそれぞれ渡す形式にしたかったが、Controller側がProductの中身を知りすぎてしまうので今の構造に。
  # ただ、これだとViewModelのテストを書く際にProductのレコード or モックが必要になる。やはりViewModelなんていらn...
  def initialize(product)
    @name = product.name
    @unit_price = product.unit_price
  end

  def summary_text
    # 設定した通貨に応じて金額出力が変わるようにしたいがめんどくさいので直書き
    "#{@name} ($#{@unit_price})"
  end
end
