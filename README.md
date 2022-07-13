# deno_go_docker_set

Deno のフレームワーク Fresh + Go のフレームワーク Gin のセットで構成する Docker です。  
この世界に存在しない雰囲気だったので作りました。

Nginx でプロキシして、

フロントエンド  
http://localhost  
バックエンド  
http://localhost:81

で動作します。  

フロントエンドもバックエンドも再読み込みで更新できます。(バックエンドはair使って対処しています)  
Fresh及びGinのエラーログなどはDocker Desktopから見れます。

# 初期手順

開始(fresh のインストールの都合上、Deno 環境は必要です)

```
make init
```

y,N 聞かれたら y でEnterを。(echo y などで自動化できなかった……)  
しばしお待ち下さい。

Go 関連のファイルは初回立ち上げに必要なためコピーして持ってきています。  
必ずしも最新のバージョンとは限りませんので、事情に合わせて変更をおすすめします。

## 初回移行の Docker 立ち上げ

Docker 立ち上げ

```
make up
```
