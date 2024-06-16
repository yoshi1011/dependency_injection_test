target :app do
  # gem_rbs_collectionでrails関連の型情報を取得しておかないと動かないよ
  signature 'app/adapters/', 'app/domains/', 'app/models/', 'app/presenters/'

  check 'app/adapters/'
  check 'app/domains/'
  check 'app/models/'
  check 'app/presenters/'
end
