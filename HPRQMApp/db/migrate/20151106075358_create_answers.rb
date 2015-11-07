class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :type
      t.string :str
      t.integer :int
      t.boolean :bool
      t.references :question, index: true, foreign_key: true
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
