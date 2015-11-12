class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :admins, dependent: :destroy
  has_many :approvers, dependent: :destroy
  has_many :submitters, dependent: :destroy
  has_many :answers

  def name
    f_name + " " + l_name
  end
end
