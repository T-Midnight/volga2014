class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.string :message
      t.string :autor_name
      t.date :date_creation

      t.timestamps null: false
    end
  end
end
