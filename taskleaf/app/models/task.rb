class Task < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum: 30 }
  # validates :name, presence: true, length: { maximum: 30 }
end
