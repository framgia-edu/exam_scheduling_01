class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by email: params[:session][:email].downcase

    if user&.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      invalid_warning
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

  private

  def invalid_warning
    flash.now[:danger] = t ".invalid"
    render :new
  end
end
