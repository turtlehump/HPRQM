class Question < ActiveRecord::Base
  enum ans_type: [ :string, :int, :bool ]
  has_many :answers, dependent: :destroy#this should be in review_questions
  has_many :review_questions #so that we can see what reviews use a question
  # a question does not point back up to its reviews because
  # a question doesnt really care about its reviews, its
  # just a question
end
