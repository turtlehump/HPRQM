class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :admins, dependent: :destroy
  has_many :approvers, dependent: :destroy
  has_many :submitters, dependent: :destroy

  enum role: [ :admin, :approver, :submitter ]

  has_many :project_users, dependent: :destroy
  #this (^) lines main functionality is the dependent: :destroy, not to create a @user.project_users

  has_many :answers  #dont delete someones answers just because they no longer work there...
  # not sure if this will cause bugs if this user has answered questions and then gets deleted
  # how will the answer know what the name of its creator is?
  

  #this function will get the user the correct projects for their given role, @user.projects
  def projects
    if(self.role == "admin" || self.role == "approver") #needs testing
      Project.all #admins and approvers can approve anything
    end
    if(self.role == "submitter") #needs testing
      self.project_users.map { |pu| pu.project }  #you can only submit answers for projects that you are a part of
                                                  #the project_user table should only have subbmitters in it
    end
  end

  def name
    f_name + " " + l_name
  end

end
