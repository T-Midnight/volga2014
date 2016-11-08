class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :content
      t.integer :question_id
      t.string :autor_name
      t.date :date_creation

      t.timestamps null: false
    end
    add_index :answers, [:question_id, :date_creation]
  end
end
