class UsersSubjectsController < ApplicationController
  def new
    @users_subject = UsersSubject.new
  end

  def create
    @users_subject = UsersSubject.new users_subject_params
    @subject = Subject.find_by_code(@users_subject.subject_id)
    @users_subject.user_id = current_user.id
    return unless @users_subject.save
    flash[:success] = "Add Subject to User successfully"
    redirect_to root_url
  end

  private

  def users_subject_params
    params.require(:users_subject).permit :user_id, :subject_id
  end
end
