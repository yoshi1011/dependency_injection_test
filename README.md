# なぜ依存性を注入するのか 第3章 疎結合コードをRailsで書いてみた

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

## その他

rbs_collectionやSteepfileがありますが全然使ってません
