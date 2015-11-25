class ProjectUser < ActiveRecord::Base
  belongs_to :project
  belongs_to :user

  #To make a project user act more like
  #a user when you just need information.
  def role
    user.role
  end

  def credentials
    user.credentials
  end

  def admin?
    user.role == "admin"
  end

  def approver?
    user.role == "approver"
  end

  def submitter?
    user.role == "submitter"
  end

end
