# users table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|email|string|null: false|
|password|string|null: false|

## Association

- has_many :schedules, through: :users_schedules
- has_many :users_schedules
- belongs_to :ownpage

# schedules table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|content|string|----|

## Association

- has_many :users, through: :users_schedules
- has_many :users_schedules
- has_many :ownpages, through: :schedules_ownpages
- has_many :schedules_ownpages

# ownpages table

|Column|Type|Options|
|------|----|-------|
|image|string|------|
|content|text|------|

## Association

- belongs_to :user
- has_many :schedules, through: :schedules_ownpages
- has_many :schedules_ownpages

# user_schedules table

|Column|Type|Options|
|------|----|-------|
|use_id|references|null: false, foreign_key: true|
|schedule_id|references|null: false, foreign_key: true|

## Association

- belongs_to :user
- belongs_to :schedule

# schedules_ownpages table

|Column|Type|Options|
|------|----|-------|
|ownpage_id|references|null: false, foreign_key: true|
|schedule_id|references|null: false, foreign_key: true|

## Association

- belongs_to :ownpage
- belongs_to :schedule