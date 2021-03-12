class ColumnsController < ApplicationController
  before_action :set_column, only: [:edit, :update, :show, :destroy]
  def index
    @columns = Column.all
  end

  def new
    @column = Column.new
  end

  def create
    @column = Column.new(column_params)
    if @column.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @column.update(column_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
  end


  def destroy
    if @column.destroy
      redirect_to root_path
    else
      render :root_path
    end
  end

  private

  def column_params
    params.require(:column).permit(:title, :text).merge(user_id: current_user.id)
  end

  def set_column
    @column = Column.find(params[:id])
  end
end
