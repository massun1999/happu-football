class SchedulesController < ApplicationController
  def index
    @schedule = Schedule.where(['year LIKE ?', "%#{20}%"]).last
    @month = Schedule.where.not(month: "-").last
    @schedules = Schedule.order(created_at: :desc).limit(31)
  end

  def import
    @schedule = params[:file]
    if @schedule
      Schedule.import(params[:file])
    else
      redirect_to "/schedules"
      flash.now[:alert] = 'メッセージを入力してください。'
    end
  end

end
