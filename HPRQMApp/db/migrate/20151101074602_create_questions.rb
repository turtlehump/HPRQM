class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question, null: false
      t.integer :answer_type

      t.timestamps null: false
    end
  end
end
