# Presence-chart
## 概要
選んだ日付の、各ユーザーがどの時間帯にいるのかが一目で分かるアプリ  
## 本番環境
デプロイ先→https://presencechart.herokuapp.com  
テスト用emailアドレス→test@com  
パスワード→11111111
## 制作意図
格闘ゲームやFPS等の対人ゲームの初心者用の練習場が少ないと感じていたため、今後オンライン上で初心者用の練習場を作成しようと考えている。今回はそのときに使用する、誰がどの時間帯であれば参加しているかが一目で分かるアプリを作成した。
## デモ
### メインページ
<img width="1440" alt="presence-chart__main" src="https://user-images.githubusercontent.com/67146016/89723593-8ce18a80-da33-11ea-9364-6fbcc0f0ce53.png">  <br>
### 個人ページ
<img width="1440" alt="presence-chart__ownpage" src="https://user-images.githubusercontent.com/67146016/89723597-9834b600-da33-11ea-87f2-d5118b2b0066.png">

## 工夫点
・作成したユーザーは自動的にメインページのユーザー欄に追加される  <br>
・時間帯を表にして、セルをクリックするだけで簡単に在室（■）と不在（□）を切り替えられるようにした
## 使用技術
言語： Haml,    Scss,   JavaScript  <br>
フレームワーク： Ruby on Rails  <br>
DB： PostgleSQL
## 今後実装したい機能
・個人ページを充実させる  <br>
・選択した日付毎に予定を作成できるようにして、日付やボタンで移動できるようにする
## DB設計
### users table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|email|string|null: false|
|password|string|null: false|

#### Association

- has_many :schedules, through: :user_schedules
- has_many :user_schedules
- belongs_to :ownpage

### schedules table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|content|string|----|

#### Association

- has_many :users, through: :users_schedules
- has_many :users_schedules
- has_many :ownpages, through: :schedule_ownpages
- has_many :schedule_ownpages

### ownpages table

|Column|Type|Options|
|------|----|-------|
|image|string|------|
|content|text|------|

#### Association

- belongs_to :user
- has_many :schedules, through: :schedules_ownpages
- has_many :schedule_ownpages

### user_schedules table

|Column|Type|Options|
|------|----|-------|
|use_id|references|null: false, foreign_key: true|
|schedule_id|references|null: false, foreign_key: true|

#### Association

- belongs_to :user
- belongs_to :schedule

### schedules_ownpages table

|Column|Type|Options|
|------|----|-------|
|ownpage_id|references|null: false, foreign_key: true|
|schedule_id|references|null: false, foreign_key: true|

#### Association

- belongs_to :ownpage
- belongs_to :schedule
