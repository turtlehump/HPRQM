class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
    @user = current_user
    if @user.super_admin
      @user_projs = @projects
    else
      #TODO we will have to redo this stuff with the new method.

      #I think this will work but i dont want to test it yet
      #@user_admin_projs = @user.project_users.map { |p| p.project }

      #The old stuff for refference
      #@user_ad_projs = @user.admins.map { |connection| connection.project }
      #@user_ap_projs = @user.approvers.map { |connection| connection.project }
      #@user_sub_projs = @user.submitters.map { |connection| connection.project }
      #@user_projs = @user_ad_projs + @user_ap_projs + @user_sub_projs
    end
  end

  def show
    users = @project.project_users
    #grab the project user admins
    @admins = users.each { |u| u if u.user.role == :admin }

    #TODO no matter what i do, i cant get just the admins that
    #are not already assigned to the project.
    #@add_admin = User.all.each { |u| u if u.role == :admin }
    @add_admin = User.where( 'role == ?', :admin )
    #@add_admin = User.admin - @project.users.where( role: :admin )

    #grab the project user approvers
    @approvers = users.each { |u| u if u.user.role == :approver }
    #TODO get new potential approvers

    #grab the project user submitters
    @submitters = users.each { |u| u if u.user.role == :submitter }
    #TODO get new potential submitters

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
