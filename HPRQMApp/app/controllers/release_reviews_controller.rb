class ReleaseReviewsController < ApplicationController
  before_action :set_release_review, only: [:show, :edit, :destroy]
  before_action :get_release, only: [:index, :new, :create]

  def new
    @release_reviews = @release.reviews
    @release_review_add = Review.all - @release_reviews
    @release_review = @release.release_reviews.new
  end

  def edit
  end

  def create
    @release_reviews = @release.reviews
    @release_review_add = Review.all - @release_reviews
    @release_review = @release.release_reviews.new(release_review_params)

    if @release_review.save
      redirect_to project_releases_url(@release), notice: 'Added new Review.'
    else
      render :new
    end
  end

  def destroy
    @release_review.destroy
    redirect_to project_release_url(@release), notice: 'Review was successfully removed.'
  end

  private
  def release_review_params
    params.require(:release_review).permit(:release_id, :review_id)
  end

  def set_release_review
    @release_review = ReleaseReview.find params[:id]
  end

  def get_release
    @release = Release.find params[:release_id]
  end

end
