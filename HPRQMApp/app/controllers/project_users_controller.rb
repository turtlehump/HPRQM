class ProjectUsersController < ApplicationController
  before_action :set_project_user, only: [:destroy]
  before_action :get_project, only: [:new, :create]

  def create
    @admins = @project.users.admin
    @add_admin = User.admin - @admins
    @project_user = @project.project_users.new(project_user_params)
    if @project_user.save
      redirect_to project_url(@project), notice: 'Added new project user.'
    else
      render :new
    end
  end

  def destroy
    @project_user.destroy
    redirect_to project_url(@project_user.project), notice: 'User was removed from project.'
  end

  private
  def project_user_params
    params.require(:project_user).permit(:project_id, :user_id)
  end

  def set_project_user
    @project_user = ProjectUser.find(params[:id])
  end

  def get_project
    @project = Project.find params[:project_id]
  end

end
