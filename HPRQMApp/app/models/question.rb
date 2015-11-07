class Question < ActiveRecord::Base
  eum type: [ :string, :int, :bool ]
  has_many :answers
  # a question does not point back up to its reviews because
  # a question doesnt really care about its reviews, its
  # just a question
end
