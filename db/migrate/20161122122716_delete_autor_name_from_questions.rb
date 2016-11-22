class DeleteAutorNameFromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :autor_name
  end
end
