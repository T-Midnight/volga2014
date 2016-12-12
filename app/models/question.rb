class Question < ActiveRecord::Base
  validates :title,  presence: true, uniqueness: true
  validates :message,  presence: true
  has_many :answers, dependent: :destroy
  belongs_to :user
  include PgSearch
  pg_search_scope :search_everywhere, against: [:title]
end
