class Release < ActiveRecord::Base
  belongs_to :project
  # a release cares about its project because
  # a release can only live within a project

  has_many :reviews, through: :release_reviews
  has_many :release_reviews, dependent: :destroy
  #this (^) lines main functionality is the dependent: :destroy, not to create a @review.release_review

  has_many :answers, dependent: :destroy
  #this (^) lines main functionality is the dependent: :destroy, not to create a @review.answers
end
