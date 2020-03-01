class Task < ApplicationRecord
  belongs_to_active_hash :work
  belongs_to :user
  belongs_to :daytime
end
