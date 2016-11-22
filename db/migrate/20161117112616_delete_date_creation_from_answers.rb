class DeleteDateCreationFromAnswers < ActiveRecord::Migration
  def change
    remove_column :answers, :date_creation
  end
end
