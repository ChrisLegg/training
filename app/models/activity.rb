class Activity < ActiveRecord::Base
  validates :date, presence: true
  validates :activity, presence: true
  validates :distance, presence: true
  validates :duration, presence: true
end
