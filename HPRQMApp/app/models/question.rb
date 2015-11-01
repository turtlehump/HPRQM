class Question < ActiveRecord::Base
  # a question does not point back up to its reviews because
  # a question doesnt really care about its reviews, its
  # just a question
end
