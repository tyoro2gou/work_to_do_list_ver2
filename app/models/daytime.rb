class Daytime < ApplicationRecord
  belongs_to_active_hash :month
  belongs_to_active_hash :daytime
  belongs_to_active_hash :hour
  belongs_to_active_hash :minute
  has_one :task
end
