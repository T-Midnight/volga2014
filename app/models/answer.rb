class Answer < ActiveRecord::Base
  validates :content, :autor_name, presence: true
end

