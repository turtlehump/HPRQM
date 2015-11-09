class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.column :ans_type, :integer, default: 0, null: false
      t.string :str
      t.integer :int
      t.boolean :bool
      t.references :question, index: true, foreign_key: true
      t.references :release, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
