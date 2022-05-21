### アプリケーション名
quiz-prototype  
  
### アプリケーション概要
簡単にクイズの作成が出来て、クイズにチャレンジできるアプリ！  
  
### URL
https://quiz-prototype-eve2525.herokuapp.com/  
  
### テスト用アカウント
・Basic認証ID:admin  
・Basic認証パスワード:2222  
・メールアドレス:a@a  
・パスワード:aaa111  
  
### 利用方法
・トップページ(一覧ページ)のヘッダーからユーザー新規登録を行う  
・トップページ右下の「クイズ投稿ボタン」から、クイズの内容を入力し投稿する  
・一覧ページからクイズのタイトルをクリックして詳細ページに移動する  
・クイズ作成者の場合のみ、「編集」「削除」が行える  
・「クイズに挑むボタン」を押し、クイズの内容が表示される  
・「答えはこちらボタン」を押すと解答と解説が表示される  
  
### アプリケーションを作成した背景
ゲームやマンガが好きなのでクイズ形式で出題、解答が出来たら友達と盛り上がれると思い作成しました。  
受験の問題を作成して解いていけたら実用性も高いと考えています。  
  
### 洗い出した要件
https://docs.google.com/spreadsheets/d/1clLNGYnU-NtEhObuAsWWpKrGvBo11Tnb7FdqnT30q00/edit?usp=sharing  
  
### 開発環境
・HTML  
・CSS  
・ruby  
・ruby on rails  
  
### 工夫したポイント
Bootstrapテンプレートを使いましたが、テンプレートの使い易いところをチョイスして使用しています。  
スマホでも使い易いようにレスポンシブデザインのビューにこだわりました。  
プロトタイプとして作成したため、最低限の機能しかなく改善の余地あると考えています。  
追加実装またはプロトタイプを雛形に新規アプリ作成もありだと考えています。  


・これから追加実装したいこと  
クイズの解答画面を表示させているだけなので条件分岐を使い、選んだ解答で正解不正解の表示をすること。  
一問一答の形式のため連続で問題を解き、正解数や点数を表示させる機能。  
ユーザー管理機能として自分が作ったクイズを一覧管理する機能。  
ユーザー同士の交流のためイイねをつける機能。  



# 「ユーザー情報」Tabel
・usersテーブル
|Column            |Type   |Options    |
|------------------|-------|-----------|
|nickname          |string |null: false|ニックネーム
|email             |string |null: false|メールアドレス
|encrypted_password|string |null: false|パスワード
# Association
has_many:quizs


# 「クイズ情報」Tabel
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
# Association
belongs_to:user