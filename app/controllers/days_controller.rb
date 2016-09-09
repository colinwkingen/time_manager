class DaysController < ApplicationController

  def index
    @days = Day.all
    render :index
  end

  def show
    @day = Day.find(params[:id])
    render :show
  end

  def new
    @day = Day.new
    render :new
  end

  def create
    @day = Day.new(day_params)
    if @day.save
      redirect_to  days_path
    else
      render :new
    end
  end

  def edit
    @day = Day.find(params[:id])
    render :edit
  end

  def update
    @day = Day.find(params[:id])
    if @day.update(day_params)
      redirect_to days_path
    else
      render :edit
    end
  end

  def destroy
    @day = Day.find(params[:id])
    @day.destroy
    redirect_to days_path
  end

  private
  def day_params
    params.require(:day).permit(:date)
  end

end
