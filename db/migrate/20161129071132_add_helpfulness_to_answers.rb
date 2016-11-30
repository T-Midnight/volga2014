class AddHelpfulnessToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :helpfulness, :integer, default: 0
  end
end
