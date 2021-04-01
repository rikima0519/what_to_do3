# アプリケーション名	

What_to_do3

# アプリケーション概要

やるべきことを整理できるアプリ。

直近でやるべきことをリスト化し、終了目安を設定できる。一覧表示画面にリストが期限の近い順に表示される。
やり終えたものは削除機能で削除できる。

# URL
https://what-to-do-3.herokuapp.com/


# テスト用アカウント
email: test@example
password: kobato1018

# 利用方法
 サインアップまたはサインイン後に、「リストを作成」をクリック。
 そうするとタイトルと内容と日付の欄が表示される。
 それらを入力し、「作成」をクリックすることで、一覧画面にその内容が表示される。
 もし終わったら、「終わったらクリック」を押すと削除される

# 目指した課題解決
 直近ですべきことを一覧で目視できるため、やるべきことを整理できる。
 自分自身がたくさん仕事を与えられるとどれからやればいいかわからなくなることがあったので、このように一目で整理できるアプリを作ろうと考えた。
 作成順ではなく終了目安順に左から順番に表示されるため、優先順位を付けやすくなる。（左の方が優先順位が高い）


# 洗い出した要件
 ①ユーザー管理機能
 ・ユーザーを新しく登録できる
 ・ユーザー登録が完了している場合、ログインすることができる
 ・ユーザー登録後にユーザー情報を編集することができる
 ・ログアウトできる
 ②リスト作成機能
 ・やるべきことを記述できるリストを新しく作成できる
 
# 実装した機能についてのGIFと説明

ユーザー新規登録動画
 https://i.gyazo.com/509cb53cc0229a1d2dd2f8b794e1499b.mp4

ユーザーログイン動画
 https://i.gyazo.com/a3118abf91185a8101cd2e005ca18144.mp4

ユーザー編集動画
 https://i.gyazo.com/0984f16bc0c278ba4675927b9965371b.mp4

ログアウト動画
https://i.gyazo.com/d4f282a4f60d13669d0a6a036371c4ce.mp4

リスト作成動画
https://i.gyazo.com/b9a12503863b5fe61adcc11dd0a618ad.mp4


# 実装予定の機能
リストが横並びになってしまうので、折り返して表示できるようにしたい
# データベース設計


  ## users テーブル

   | Column             | Type    | Options                   |
   | ------------------ | ------- | ------------------------- |
   | name               | string  | null: false               |
   | email              | string  | null: false, unique: true |
   | encrypted_password | string  | null: false               |


   ### Association

    - has_many :lists

   ##  lists テーブル

    | Column        | Type        | Options             |
    | ------------- | ----------- | ------------------- |
    | title         | string      | null: false         |
    | explain       | text        |                     |
    | day           | date        |                     |
    | user          | references  | null: false         |

   ### Association

    - belongs_to :user


# ローカルでの動作方法
  git clone https://github.com/rikima0519/what_to_do.git
