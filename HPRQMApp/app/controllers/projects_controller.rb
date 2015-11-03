class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def show
    #work is done in before_action
    @ads = @project.admins.map { |connection| connection.user }
    @apps = @project.approvers.map { |connection| connection.user }
    @subs = @project.submitters.map { |connection| connection.user }
  end

  def new
    @project = Project.new
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
