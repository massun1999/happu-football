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
    params.require(:thred).permit(:content).merge(user_id: current_user.id)
  end
end
