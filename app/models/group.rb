class Group < ApplicationRecord
  belongs_to :user
  has_many :purchases

  validates :name, presence: true
  validates :icon, presence: true
  validates :user_id, presence: true
end
