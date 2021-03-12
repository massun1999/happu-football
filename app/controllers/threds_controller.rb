class ThredsController < ApplicationController
  before_action :set_thred, only: [:edit, :update, :show, :destroy]
  def index
    @threds = Thred.all
    @columns = Column.last(3)
    @schedule = Schedule.where(['year LIKE ?', "%#{20}%"]).last
    @month = Schedule.where.not(month: "-").last
    @schedules = Schedule.order(created_at: :desc).limit(31)
  end

  def new
    @thred = Thred.new
  end

  def create
    @thred = Thred.new(thred_params)
    if @thred.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @thred.update(thred_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
  end


  def destroy
    if @thred.destroy
      redirect_to root_path
    else
      render :root_path
    end
  end

  private

  def thred_params
    params.require(:thred).permit(:title,:content,:user_id).merge(user_id: current_user.id)
  end

  def set_thred
    @thred = Thred.find(params[:id])
  end
end
