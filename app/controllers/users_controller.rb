class UsersController < ApplicationController
  before_action :find_user, only: %i(show edit update destroy)

  def index
    @users = User.order_by_code.paginate page: params[:page],
      per_page: Settings.users.per_page
  end

  def show; end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params

    if @user.save
      flash[:info] = t ".success"
      redirect_to root_url
    else
      flash[:danger] = t ".failed"
      render :new
    end
  end

  def edit; end

  def update
    if @user.update user_params
      flash[:success] = t ".update"
      redirect_to users_path
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    flash[:success] = t ".delete"
    redirect_to users_path
  end

  private

  def find_user
    @user = User.find_by id: params[:id]

    return if @user
    flash[:danger] = t "nouser"
    redirect_to root_url
  end

  def user_params
    params.require(:user).permit :code, :name, :email, :info,
      :password, :password_confirmation, :image
  end
end
