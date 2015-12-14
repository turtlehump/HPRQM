class ReleasesController < ApplicationController
  before_action :set_release, only: [:show, :edit, :update, :destroy]

  # GET /releases
  # GET /releases.json
  def index
    @releases = Release.all
  end

  # GET /releases/1
  # GET /releases/1.json
  def show
    #@project = Project.find params[:project_id]
    @release_reviews = @release.reviews
    @release_review =@release.release_reviews.new
    @release_review_add = Review.all# - @release_reviews
  end

  # GET /releases/new
  def new
    @project = Project.find params[:project_id]
    @release = @project.releases.new
  end

  # GET /releases/1/edit
  def edit
  end

  # POST /releases
  # POST /releases.json
  def create
    @project = Project.find params[:project_id]
    @release = @project.releases.new(release_params)

    if @release.save
      redirect_to project_url(@project), notice: 'Release was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /releases/1
  # PATCH/PUT /releases/1.json
  def update
    if @release.update(release_params)
      redirect_to project_url(@release.project), notice: 'Release was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /releases/1
  # DELETE /releases/1.json
  def destroy
    @release.destroy
    redirect_to project_url(@release.project), notice: 'Release was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_release
    @release = Release.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def release_params
    params.require(:release).permit(:name, :sdlcm_release_id, :start_date, :end_date)
  end
end
