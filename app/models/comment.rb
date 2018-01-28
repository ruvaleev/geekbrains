class Comment < ApplicationRecord
<<<<<<< HEAD
  belongs_to :user, counter_cache: true
  belongs_to :commentable, polymorphic: true
=======
  belongs_to :user
  validates_associated :user
  validates :body, length: { maximum: 1000 }
  validates :body, presence: true
>>>>>>> b5394fb350ce3648f6ec1cedb7705206ce78d7f3
end
