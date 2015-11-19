class DashboardController < ApplicationController
  def index
    @num_projects = 1
    @num_reviews = 1
    @num_questions = 82462
    @num_users = User.all.count
  end
end
