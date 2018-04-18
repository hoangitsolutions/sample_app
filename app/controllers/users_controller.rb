class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update]
  before_action :correct_user,   only: [:edit, :update]
  def show

   @user = User.find_by id: params[:id]
   unless @user
    flash[:danger] = I18n.t ".nouser"
    redirect_to root_url

    def index
      @users = User.paginate(page: params[:page])
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = I18n.t ".welcome_to_app"
      redirect_to @user
    else
      render :new
    end
  end

  private

  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = I18n.t ".pleaselog"
      redirect_to login_url
    end
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = I18n.t ".profileup"
      redirect_to @user
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit :name, :email, :password, :password_confirmation
  end
end
