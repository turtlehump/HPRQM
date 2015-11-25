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
    users = @project.project_users
    #grab the project user admins
    #TODO @admins nearly works
    @admins = users.map { |u| u if u.user.role == :admin }.compact
    @add_admin = User.admin - @project.users.admin

    #grab the project user approvers
    #TODO @approvers nearly works
    @approvers = users.map { |u| u if u.user.role == :approver }.compact
    @add_approvers = User.approver - @project.users.approver

    #grab the project user submitters
    #TODO @submitters nearly works
    @submitters = users.map { |u| u if u.user.role == :submitter }.compact
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
