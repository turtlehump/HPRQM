class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :review_name, null: false, unique: true
      t.timestamps null: false
    end
  end
end
