module AnswersHelper
  def change_helpfulness(current_value)
    current_value ||= 0
    current_value += 1
  end
end
