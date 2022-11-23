class Post < ApplicationRecord
  validates :title,
    presence: true,
    length: { maximum: 180 }
  
  validates :content,
    presence: true,
    length: { maximum: 5000 }
  
  belongs_to :user
  has_many :comments
end
