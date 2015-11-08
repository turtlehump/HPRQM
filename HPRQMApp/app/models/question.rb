class Question < ActiveRecord::Base
  enum ans_type: [ :string, :int, :bool ]
  has_many :answers, dependent: :destroy
  # a question does not point back up to its reviews because
  # a question doesnt really care about its reviews, its
  # just a question
end
