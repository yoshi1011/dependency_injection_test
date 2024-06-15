class User < ApplicationRecord
  # roleで優待会員かどうかを確認したいだけなのでかなり簡易的にUserモデルを作成
  enum role: [:regular, :vip]
end
