class Group < ApplicationRecord
  belongs_to :user
  has_many :purchases, dependent: :destroy

  validates :name, presence: true
  validates :icon, presence: true
  validates :user_id, presence: true
end
