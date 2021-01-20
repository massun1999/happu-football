class ThredsController < ApplicationController
  def index
    @threds = Thred.all
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

  private

  def thred_params
    params.require(:thred).permit(:content).merge(user_id: current_user.id)
  end
end
