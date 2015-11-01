class ReleaseReview < ActiveRecord::Base
  belongs_to :release
  belongs_to :review
end
