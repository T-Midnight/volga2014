class DeleteAutorNameFromAnswers < ActiveRecord::Migration
  def change
    remove_column :answers, :autor_name
  end
end
