class Question < ActiveRecord::Base
  validates :title,  presence: true
  validates  :message,  presence: true
  validates:autor_name,   presence: true

end
