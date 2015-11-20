class Project < ActiveRecord::Base
  has_many :admins, dependent: :destroy       #we are going to get rid of this
  has_many :approvers, dependent: :destroy    #we are going to get rid of this
  has_many :submitters, dependent: :destroy   #we are going to get rid of this
  has_many :releases, dependent: :destroy
  has_many :users through: :project_users
  has_many :project_users, dependent: :destroy
  #this (^) lines main functionality is the dependent: :destroy, not to create a @project.project_users
end
