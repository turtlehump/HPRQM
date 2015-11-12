class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :review_name, null: false, unique: true
      t.text :description
      t.timestamps null: false
    end
  end
end
