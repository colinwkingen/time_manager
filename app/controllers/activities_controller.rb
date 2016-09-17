class ActivitiesController < ApplicationController
  def new
    @day = Day.find(params[:day_id])
    @activity = @day.activities.new
  end

  def create
    @day = Day.find(params[:day_id])
    @activity = @day.activities.new(activity_params)
    if @activity.save
      flash[:success] = "Activity Set"
      redirect_to day_path(@activity.day)
    else
      render :new
    end
  end

  def edit
    @activity = Activity.find(params[:id])
    @day = Day.find(params[:day_id])
  end

  def update
    @activity = Activity.find(params[:id])
    @day = Day.find(params[:day_id])
    if @activity.update(activity_params)
      flash[:success] = "Activity Changed"
      redirect_to day_path(@day)
    else
      render :edit
    end
  end

  private
  def activity_params
    params.require(:activity).permit(:activity)
  end
end
