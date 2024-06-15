class UserContextAdapter < Products::Domain::IUserContext
  # IUserContextはドメイン層、実装クラスはUI層に配置の考えなので、adaptersディレクトリに置いてみた
  # 別ディレクトリからの継承しているのはものすごく違和感…
  # これくらいならUserを渡せばいいのでは？とも考えたが、Products::Domain配下にUserを持ち込むことで依存性が強まり、
  # 何らかの変更があった場合にUserが複雑になることから、Adapterを導入することに意義はある？と思い書籍の通り作った
  # 命名は役割に応じて変えても良かったかもしれない
  def initialize(user)
    @user = user
  end

  def is_in_role(role)
    @user.role == role
  end
end
