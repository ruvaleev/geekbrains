class Post < ApplicationRecord
  belongs_to :user
  validates_associated :user
  validates :body, length: { maximum: 10000, minimum: 50 }
  validates :title, length: { maximum: 100, minimum: 2 }
  validates :title, :body, presence: true
  validates :title, uniqueness: true
end
