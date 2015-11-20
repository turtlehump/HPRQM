class Question < ActiveRecord::Base
  enum ans_type: [ :string, :int, :bool ]
  has_many :answers, dependent: :destroy
  # a question does not point back up to its reviews because
  # a question doesnt really care about its reviews, its
  # just a question

  has_many :review_questions, dependent: :destroy
  #this (^) lines main functionality is the dependent: :destroy, not to create a @question.review_questions
end
