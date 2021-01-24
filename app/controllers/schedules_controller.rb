class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def import
    Schedule.import(params[:file])
    redirect_to root_path
  end
  
end
