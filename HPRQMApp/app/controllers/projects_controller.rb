class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @user = current_user
    if @user.super_admin
      @user_projects = Project.all
    else
      @user_projects = @user.projects
    end
  end

  def show
    #grab the project_users that are working on the project
    users = @project.project_users
    @admins = Array.new
    users.each do |u| if u.admin? then @admins.push u end end
    @approvers = Array.new
    users.each do |u| if u.approver? then @approvers.push u end end
    @submitters = Array.new
    users.each do |u| if u.submitter? then @submitters.push u end end

    #grab potential new project_users
    @add_admins = User.admin - @project.users.admin
    @add_approvers = User.approver - @project.users.approver
    @add_submitters = User.submitter - @project.users.submitter

    #not sure if this line is needed
    @project_user = @project.project_users.new

    #for project releases
    @project_releases = @project.releases
    @release = @project.releases.new
  end

  def new
    @project = Project.new
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to @project, notice: 'Project was updated.'
    else
      render :edit
    end
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project
    else
      render :new
    end
  end

  private
  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:project_name, :end_date, :ppm_id)
  end
end
