# 
おみくじ

- 一言説明
    - 超絶にシンプルなおみくじアプリです。  

# 画面のイメージ

- <img width="1917" height="865" alt="Image" src="https://github.com/user-attachments/assets/54b73819-2581-4798-aee3-0e6eb346fce4" />  

# 使った技術

- Ruby 3.4.11 
- Rails 8.1.4
- PostgreSQL 17
- Docker 29.8.0  

# 起動方法


**※DockerDesktopを起動させておいてください。**  
**※コマンドはターミナル上で実行してください。**  

- このアプリをローカルにクローンする。
```
git clone https://github.com/shunsuke8823/omikuji.git
```  

- クローン後、omikujiディレクトリ移動する。
```
cd omikuji
```  

- アプリをビルドする。
```
docker compose build
```  

- ビルド終了後、Dockerコンテナを起動。
```
docker compose up -d
```  

- 起動後、DBを作成。
```
docker compose exec web bin/rails db:create
```  

- localhost:3000を開く。  

- 終了する場合は、Dockerコンテナをダウンさせる。
```
docker compose down
```  

# 工夫した点

- おみくじ結果が少ないため、DBを使用せずコントローラーに結果をハッシュ形式で記述した。
- 結果ごとにデザインを変更するために{結果 => クラス名}というハッシュの形式で実装。
- HTML,CSSの仕組みを学ぶため、フレームワークを使用せずデザインを作成した。

# 公開URL

- デプロイ後更新。