class Answer < ActiveRecord::Base
  validates :content, presence: true,  length: { maximum: 1000 }
  validates :question_id, presence: true
  belongs_to :question
  belongs_to :user
end

