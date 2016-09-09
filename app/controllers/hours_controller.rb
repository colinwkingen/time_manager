class HoursController < ApplicationController
  def new
    @day = Day.find(params[:day_id])
    @hour = @day.hours.new
  end

  def create
    @day = Day.find(params[:day_id])
    @hour = @day.hours.new(hour_params)
    if @hour.save
      flash[:success] = "Activity Set"
      redirect_to day_path(@hour.day)
    else
      render :new
    end
  end

  def edit
    @hour = Hour.find(params[:id])
    @day = Day.find(params[:day_id])
  end

  def update
    @hour = Hour.find(params[:id])
    @day = Day.find(params[:day_id])
    if @hour.update(hour_params)
      flash[:success] = "Activity Changed"
      redirect_to day_path(@day)
    else
      render :edit
    end
  end

  private
  def hour_params
    params.require(:hour).permit(:activity)
  end
end
