# なぜ依存性を注入するのか Railsで書いてみた

## Usage

```sh
docker compose up -d

docker compose run --rm app rails db:create
docker compose run --rm app rails db:migrate
docker compose run --rm app rails db:seed
```

http://localhost:3000 にアクセスする

## 独り言

元コードが.NET Coreで書かれているものなので、いろいろ取捨選択しながら書いている。
せっかくなので、と書いているものもあるので、実務で使う際には不要なコードもいくつかある。

第4章のコンストラクタによる注入を実践したが、第2、3章までの前提が大きく変わる変更(ProductのamountがDecimalではなくMoneyであることなど)
があったため、ドメイン層だけでなくインフラ層も大きく変更する必要があった。

## その他

rbsを書いてはいるが、主にIDEでの確認用に書いていて、Steepの利用にまでは至っていない。
gem_rbs_collectionのRails関連の型周りでSyntaxErrorを吐きまくるため現状スルー。
