class Schedule < ApplicationRecord
  has_many :users, through: :user_schedules
  has_many :user_schedules
  has_many :ownpages, through: :schedule_ownpages
  has_many :schedule_ownpages
end