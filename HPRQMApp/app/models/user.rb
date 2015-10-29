class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #has_many :admins, dependent: :destroy
  #has_many :approvers, dependent: :destroy
  #has_many :subbmitters, dependent: :destroy
  has_many :projects, through: :admins, dependent: :destroy
  has_many :projects, through: :approvers, dependent: :destroy
  has_many :projects, through: :submitters, dependent: :destroy
end
