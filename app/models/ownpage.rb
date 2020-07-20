class Ownpage < ApplicationRecord
  # belongs_to :user
  has_many :schedules, through: :schedule_ownpages
  has_many :schedule_ownpages
end
