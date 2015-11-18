class Review < ActiveRecord::Base
  has_many :review_questions, dependent: :destroy
  has_many :questions, through: :review_questions
  # a review does not point back up to its releases because
  # a review doesnt really care about a realease, a review
  # is just a set of questions
end
