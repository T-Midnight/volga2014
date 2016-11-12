class Answer < ActiveRecord::Base
  validates :content, :autor_name, presence: true
  validates :question_id, presence: true
  belongs_to :question
end

