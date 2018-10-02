class SubjectsController < ApplicationController
  before_action :set_subject, only: [:show, :edit, :update, :destroy, :remove]

  def index
    @subjects = search params[:search], Subject
    @subject = Subject.new
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.create subject_params
    if @subject.save
      flash[:success] = t "flash_create"
      redirect_to subjects_subjects_list_url
    else
      flash[:danger] = t "flash_create_fail"
      redirect_to subjects_subjects_list_url
    end
  end

  def edit
    @students = search params[:search], @subject.students
    @student = @subject.students.build
  end

  def show; end

  def update
    if @subject.update subject_params
      flash[:success] = t "flash_update"
    else
      flash[:danger] = t "flash_update_fail"
    end
    redirect_to edit_subject_url
  end

  def add
    @subject = Subject.find_by id: params[:student][:sub_id]
    @student = User.find_by code: params[:student][:code]

    if @student.blank? || @subject.was_exist?(@student)
      flash[:danger] = t "flash_update_fail"
    else
      @subject.add_student @student
      flash[:success] = t "flash_update"
    end
    redirect_to edit_subject_url(@subject)
  end

  def remove
    @student = User.find_by code: params[:code]
    @subject.remove_student @student
    flash[:success] = t "flash_delete"
    redirect_to edit_subject_url @subject
  end

  def destroy
    if @subject.destroy
      flash[:success] = t "flash_delete"
    else
      flash[:danger] = t "flash_delete_fail"
    end
    redirect_to subjects_url
  end

  def set_subject
    @subject = Subject.find_by id: params[:id]
  end

  def subject_params
    params.require(:subject).permit :subject_name, :subject_code
  end

  def subjects_list
    @subjects = Subject.order_by_id
  end

  def classes_list_of_subject
    @classes = StudyClass.find_by_subject_id params[:id]
    @subject = Subject.find_by id: params[:id]

    return unless @classes.nil? || @subject.nil?
    redirect_to subjects_subjects_list_url, notice: t(".no_class")
  end
end
