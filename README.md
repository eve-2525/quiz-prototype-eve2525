簡単にクイズの作成が出来て、クイズにチャレンジできるアプリ！
クイズの作成はユーザー登録した人のみ行えるが、クイズを解くのはログイン必要なし。
プロトタイプとして作成したため、最低限の機能しかなく改善の余地あり。


・これから追加実装したいこと
クイズの解答画面を表示させているだけなので条件分岐を使い、選んだ解答で正解不正解の表示をすること。
一問一答の形式のため連続で問題を解き、正解数や点数を表示させる機能。
ユーザー管理機能として自分が作ったクイズを一覧管理する機能
ユーザー同士の交流のためイイねをつける機能


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