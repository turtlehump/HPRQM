class Project < ActiveRecord::Base
  has_many :admins, dependent: :destroy
  has_many :approvers, dependent: :destroy
  has_many :submitters, dependent: :destroy
  has_many :releases
  has_many :answers
end
