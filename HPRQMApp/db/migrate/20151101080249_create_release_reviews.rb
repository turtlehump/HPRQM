class CreateReleaseReviews < ActiveRecord::Migration
  def change
    create_table :release_reviews do |t|
      t.references :release, index: true, foreign_key: true
      t.references :review, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
