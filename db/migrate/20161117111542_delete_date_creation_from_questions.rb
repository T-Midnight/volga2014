class DeleteDateCreationFromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :date_creation
  end
end
