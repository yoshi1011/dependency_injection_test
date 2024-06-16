class Products::Infra::ProductRepository < Products::Infra::IProductRepository
  # 書籍ではSqlProductRepositoryというクラス名になっているが、
  # ActiveRecordとやり取りをするクラスとしているのでProductRepositoryと命名した

  # 書籍ではProductのDBと接続するためのDbContextを設定するため、
  # CommerceContextというクラスを作成、注入しているが、
  # ActiveRecordにおいては不要(そもそも接続設定はdatabase.ymlに行うなど.NETとは異なる)
  # ことからクラス、注入作業は定義していない。
  # 無意味だが形だけ初期化処理を置いておく
  def initialize
    # 何もしない
  end

  def get_featured_products
    Product.all.map{|p| Products::Domain::Product.new(name: p.name, unit_price: p.unit_price, is_featured: p.is_featured, currency: p.currency)}
  end
end
