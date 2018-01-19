class Comment < ApplicationRecord
  belongs_to :user
  validates_associated :user
  validates :body, length: { maximum: 1000 }
  validates :body, presence: true
end
