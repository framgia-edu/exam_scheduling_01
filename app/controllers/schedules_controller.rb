class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.paginate page: params[:page],
      per_page: Settings.per_page.long
    @schedule = Schedule.new
  end

  def edit; end

  def create
    @times_start = params[:times_exam][:times_start]
    @times_end = params[:times_exam][:times_end]
    redirect_to schedules_url
  end

  def destroy; end
end
