class SubjectsController < ApplicationController
  def index
    @subjects = Subject.ordered_by_name.paginate page: params[:page],
      per_page: Settings.subject.per_page
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new subject_params
    if @subject.save
      redirect_to root_url
    else
      flash[:danger] = t ".error"
      render :new
    end
  end

  def edit
    @subject = Subject.find_by id: params[:id]
  end

  def update
    @subject = Subject.find_by id: params[:id]
    if @subject.update subject_params
      flash[:success] = t ".update"
      redirect_to @subject
    else
      render :edit
    end
  end

  def show
    @subject = Subject.find_by id: params[:id]
  end

  def destroy
    @subject = Subject.find_by id: params[:id]
    @subject.destroy
    flash[:success] = t ".delete"
    redirect_to subjects_url
  end

  private

  def subject_params
    params.require(:subject).permit :name, :code,
      :capacity, :exam_during
  end
end
