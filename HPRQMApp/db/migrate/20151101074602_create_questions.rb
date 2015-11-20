class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :str, null: false
      t.column :ans_type, :integer, default: 0, null: false

      t.timestamps null: false
    end
  end
end
