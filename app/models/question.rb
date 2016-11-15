class Question < ActiveRecord::Base
  validates :title,  presence: true, uniqueness: true
  validates :message,  presence: true
  validates :autor_name,   presence: true, length: {maximum: 50}
  has_many :answers, dependent: :destroy
end
