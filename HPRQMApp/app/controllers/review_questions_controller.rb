class ReviewQuestionsController < ApplicationController
  before_action :set_review_question, only: [:show, :edit, :destroy]
  before_action :get_review, only: [:index, :new, :create]

  def index
    @review_questions = @review.questions
  end

  def show
  end

  def new
    @review_questions = @review.questions
    @review_question_add = Question.all - @review_questions
    @review_question = @review.review_questions.new
  end

  def edit
  end

  def create
    @review_questions = @review.questions
    @review_question_add = Question.all - @review_questions
    @review_question = @review.review_questions.new(review_question_params)

    if @review_question.save
      redirect_to review_url(@review), notice: 'Added new Review Question.'
    else
      render :new
    end
  end

  def destroy
    @review_question.destroy
    redirect_to review_url(@review_question.review), notice: 'Question was successfully removed.'
  end

  private
  def review_question_params
    params.require(:review_question).permit(:review_id, :question_id)
  end

  def set_review_question
    @review_question = ReviewQuestion.find params[:id]
  end

  def get_review
    @review = Review.find params[:review_id]
  end

end
