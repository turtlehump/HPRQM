class Project < ActiveRecord::Base
  has_many :releases, dependent: :destroy
  has_many :users, through: :project_users
  has_many :project_users, dependent: :destroy
  #this (^) lines main functionality is the dependent: :destroy, not to create a @project.project_users
end
