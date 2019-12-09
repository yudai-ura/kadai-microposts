class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :favorites, foreign_key: 'micropost_id'
  has_many :users, through: :favorites, source: :user
  
  validates :content, presence: true, length: { maximum: 255 }
end
