class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :content
      t.integer :question_id
      t.string :autor_name

      t.timestamps null: false
    end
  end
end
