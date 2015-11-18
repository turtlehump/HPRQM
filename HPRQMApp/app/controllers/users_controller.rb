class UsersController < ApplicationController
  before_action :get_user, only: [:index, :show, :new, :edit]
  before_action :set_user, only: [:show, :new, :edit, :update]

  def index
    @super_admin = User.where(super_admin: true)
    @users = User.all - @super_admin
  end

  def edit
    
  end

  def show
  end

  def update
    if @user.update(user_params)
      redirect_to action: 'index', notice: "#{@user.name} was successfully updated."
    else
      render :edit
    end
  end

  private
  def get_user
    @current_user = current_user
  end

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:f_name, :m_name, :l_name, :employee_num, :email, :super_admin)
  end
end
