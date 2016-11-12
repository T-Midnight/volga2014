class AddIndexToQuestionsTitle < ActiveRecord::Migration
  def change
    add_index :questions, :title, unique: true
  end
end
