class ThredsController < ApplicationController
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
    @thred = Thred.find(params[:id])
  end

  def update
    @thred = Thred.find(params[:id])
    if @thred.update(thred_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
    @thred = Thred.find(params[:id])
  end


  def destroy
    @thred = Thred.find(params[:id])
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
end
