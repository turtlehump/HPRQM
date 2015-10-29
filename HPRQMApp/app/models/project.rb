class Project < ActiveRecord::Base
  #has_many :admins, dependent: :destroy
  #has_many :approvers, dependent: :destroy
  #has_many :submitters, dependent: :destroy
  has_many :users, through: :admins, dependent: :destroy
  has_many :users, through: :approvers, dependent: :destroy
  has_many :users, through: :submitters, dependent: :destroy
end
