class Answer < ActiveRecord::Base
  validates :content, presence: true,  length: { maximum: 1000 }
  validates :autor_name, presence: true, length: {maximum: 20}
  validates :question_id, presence: true
  belongs_to :question
end

