class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]
  def index
    @questions = Question.all
  end

  def create
    @question = Questioon.new(question_params)

    if @question.save
      redirect_to @question
    else
      render :new
    end
  end

  def new
    @question = Question.new
  end

  def update
    if @question.update(question_params)
      redirect_to @question, notice: 'Review was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @question.destroy
    redirect_to questions_url
  end

  def show
  end

  private
  def set_question
    @question = Question.find(params[:id])
  end

  def question_parms
    params.require(:question).permit(:question, :ans_type)
  end

end
