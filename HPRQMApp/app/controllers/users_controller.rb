class UsersController < ApplicationController
  before_action :get_user, only: [:index, :show, :new, :edit]
  before_action :set_user, only: [:show, :new, :edit]

  def index
    @users = User.all
  end

  def edit
  end

  def show
  end

  private
  def get_user
    @current_user = current_user
  end

  def set_user
    @user = User.find(params[:id])
  end
end
