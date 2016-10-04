class ActivitiesController < ApplicationController

  def index
    @day = Day.find(params[:day_id])
    @activities = @day.activities
  end

  def show
    @activities = Activity.all
  end


  def new
    @day = Day.find(params[:day_id])
    @activity = @day.activities.create({name: "Entry Not Named"})
  end

  def create
    @day = Day.find(params[:day_id])
    @activity = @day.activities.new(activity_params)
    @activity.day_id = @day.id
    if @activity.save
      flash[:success] = "Activity Set"
      redirect_to day_path(@activity.day)
    else
      render :new
    end
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to day_activities_path
  end

  def edit
    @activity = Activity.find(params[:id])
    @day = @activity.day
  end

  def update
    @activity = Activity.find(params[:id])
    @day = @activity.day
    binding.pry
    @new_total = (@activity.total_time += TimeDifference.between(@activity.updated_at, Time.now).in_seconds.to_i)
    if @activity.update(activity_params) && @activity.update({total_time: @new_total })
      flash[:success] = "Activity Changed"
      respond_to do |format|
        format.html { redirect_to day_activities_path(@activity.day) }
        format.js
      end
    else
      render :edit
    end
  end

  private
  def activity_params
    params.require(:activity).permit(:name, :start_time, :end_time )
  end
end
