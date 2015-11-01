class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question, null: false
      t.integer :ans_type
      t.string :ans_string
      t.integer :ans_int
      t.boolean :ans_bool

      t.timestamps null: false
    end
  end
end
