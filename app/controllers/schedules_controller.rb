class SchedulesController < ApplicationController
  def index
    @schedule = Schedule.where(['year LIKE ?', "%#{20}%"]).last
    @month = Schedule.where.not(month: "-").last
    @schedules = Schedule.order(created_at: :desc).limit(31)
  end

  def import
    Schedule.import(params[:file])
    redirect_to root_path
  end

end
