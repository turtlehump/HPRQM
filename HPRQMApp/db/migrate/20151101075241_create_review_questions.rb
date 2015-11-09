class CreateReviewQuestions < ActiveRecord::Migration
  def change
    create_table :review_questions do |t|
      t.references :review, index: true, null: false
      t.references :question, index: true, null: false

      t.timestamps null: false
    end
  end
end
