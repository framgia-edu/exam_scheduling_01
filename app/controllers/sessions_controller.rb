class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by code: params[:session][:code]

    if user&.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = t ".invalid"
      render :new
    end
  end

  def destroy; end
end
