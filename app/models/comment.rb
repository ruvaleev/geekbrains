class Comment < ApplicationRecord
  belongs_to :user, counter_cache: true
  belongs_to :commentable, polymorphic: true
  validates_associated :user
  validates :body, length: { maximum: 1000 }
  validates :body, presence: true
end
