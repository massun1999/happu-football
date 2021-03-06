class TopController < ApplicationController
  def index
    @threds = Thred.order(created_at: :desc).limit(2)
    @columns = Column.order(created_at: :desc).limit(3)
    @schedule = Schedule.where(['year LIKE ?', "%#{20}%"]).last
    @month = Schedule.where.not(month: "-").last
    @schedules = Schedule.order(created_at: :desc).limit(31)
  end
end
