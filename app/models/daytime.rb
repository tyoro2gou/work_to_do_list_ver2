class Daytime < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :month
  belongs_to_active_hash :day
  belongs_to_active_hash :hour
  belongs_to_active_hash :minute
  belongs_to :task ,optional: true
end