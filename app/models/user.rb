class User < ApplicationRecord
<<<<<<< HEAD
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :recoverable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :commented_posts, through: :comments, source: :commentable, source_type: :Post
  has_many :commented_users, through: :comments, source: :commentable, source_type: :User

  validates :name, :email, presence: true
  validates :name, length: { maximum: 16, minimum: 2 }
  validates :name, :email, uniqueness: true

  before_destroy :log_before_destory
  after_destroy :log_after_destory

  def log_before_destory
    Rails.logger.info '#########################################'
    Rails.logger.info "Перед удалением пользователя #{@name}"
    Rails.logger.info '#########################################'
  end

  def log_after_destory
    Rails.logger.info '#########################################'
    Rails.logger.info "После удаления пользователя #{@name}"
    Rails.logger.info '#########################################'
  end
=======
	validates :name, presence: true
	validates :name, length: { maximum: 16, minimum: 2 }
	validates :name, uniqueness: true
>>>>>>> b5394fb350ce3648f6ec1cedb7705206ce78d7f3
end
