「ユーザー情報」
## Tabel名
・usersテーブル
|Column            |Type   |Options    |
|------------------|-------|-----------|
|nickname          |string |null: false|ニックネーム
|email             |string |null: false|メールアドレス
|encrypted_password|string |null: false|パスワード
### Association
has_many:quizs




「クイズ情報」
## Tabel名
・quizsテーブル
|Column             |Type   |Options    |
|-------------------|-------|-----------|
|title              |string |null: false|タイトル
|problem            |text   |null: false|問題文
|answer1            |string |null: false|答え1
|answer2            |string |null: false|答え2
|answer3            |string |null: false|答え3
|answer4            |string |null: false|答え4
|commentary         |text   |           |解説
|answer_number      |integer|null: false|答えの番号
|user               |references|null: false|foreign_key: true|外部キーuser クイズ投稿者のid
### Association
belongs_to:user