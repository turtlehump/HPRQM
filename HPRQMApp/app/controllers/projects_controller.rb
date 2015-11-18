class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
    @user = current_user
    if @user.super_admin
      @user_projs = @projects
    else
      @user_ad_projs = @user.admins.map { |connection| connection.project }
      @user_ap_projs = @user.approvers.map { |connection| connection.project }
      @user_sub_projs = @user.submitters.map { |connection| connection.project }
      @user_projs = @user_ad_projs + @user_ap_projs + @user_sub_projs
    end
  end

  def show
    #@project done in before_action
    @admins = @project.admins.map { |connection| connection.user }
    @approvers = @project.approvers.map { |connection| connection.user }
    @submitters = @project.submitters.map { |connection| connection.user }
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
