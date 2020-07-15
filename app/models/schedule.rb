class Schedule < ApplicationRecord
  has_many :users, through: :user_schedules
  has_many :user_schedules
  # has_many :ownpages, through: :schedules_ownpages
  # has_many :schedules_ownpages
end