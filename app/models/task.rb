class Task < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :work
  belongs_to :user
  has_one :daytime
  accepts_nested_attributes_for :daytime
end