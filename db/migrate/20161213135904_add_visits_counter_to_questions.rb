class AddVisitsCounterToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :visits_counter, :integer, default: 0
  end
end
