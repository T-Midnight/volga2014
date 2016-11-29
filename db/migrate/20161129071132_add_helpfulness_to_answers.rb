class AddHelpfulnessToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :helpfulness, :integer
  end
end
