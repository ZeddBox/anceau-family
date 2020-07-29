class News < ApplicationRecord
  belongs_to :user

  validates :title, presence: true,  length: {maximum: 50}
  validates :content, presence: true, length: {within: 10..10000}
  
end
