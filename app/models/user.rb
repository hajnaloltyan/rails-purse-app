class User < ApplicationRecord
  has_many :purchases, foreign_key: 'author_id'
  has_many :groups

  validates :name, presence: true
end
