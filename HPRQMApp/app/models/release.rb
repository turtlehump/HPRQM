class Release < ActiveRecord::Base
  belongs_to :project
  # a release cares about its project because
  # a releasecan only live within a project
  has_many :release_reviews, dependent: :destroy
end
