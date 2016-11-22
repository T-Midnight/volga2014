class User < ActiveRecord::Base
  validates :name, presence: true, length: {maximum: 30}
  validates :email, presence: true
  has_many :answers, dependent: :destroy
  has_many :questions, dependent: :destroy
end
