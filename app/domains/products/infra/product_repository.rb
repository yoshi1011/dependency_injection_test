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

  # Product::ActiveRecord_Relationで返しても問題はないが、
  # 極力ActiveRecord要素を減らしておこうと思いあえてArrayとしている
  def get_featured_products
    # Productエンティティを返したい
    Product.all.to_a
  end
end
