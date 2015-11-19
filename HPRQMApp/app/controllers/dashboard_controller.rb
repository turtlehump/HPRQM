class DashboardController < ApplicationController
  def index
    @num_projects = Project.all.count
    @num_reviews = Review.all.count
    @num_questions = Question.all.count
    @num_users = User.all.count
  end
end
